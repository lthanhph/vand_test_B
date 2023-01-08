<?php

namespace App\Repositories;

use App\Models\Product;
use Illuminate\Support\Facades\DB;

class ProductRepository
{
    public $rules = [
        'name' => 'required|max:255',
        'description' => 'required',
        'brand' => 'required|max:15',
        'category' => 'required|max:255',
        'date_of_manufacture' => 'required|date',
        'store_id' => 'required|exists:stores,id',
    ];

    public function find($id)
    {
        return Product::find($id);
    }

    public function search($search)
    {
        $query = Product::where('name', 'like', '%' . $search . '%')
            ->orWhere('description', 'like', '%' . $search . '%')
            ->orWhere('brand', 'like', '%' . $search . '%')
            ->orWhere('category', 'like', '%' . $search . '%');

        $timestamp = strtotime($search);
        if (!empty($timestamp)) {
            $date = date('Y-m-d', $timestamp);
            $before = $date . ' 00:00:00';
            $after = $date . ' 23:59:59';
            $query->orWhereBetween('date_of_manufacture' , [$before, $after]);
        }

        return $query->get();
    }

    public function paginate()
    {
        return Product::paginate();
    }

    public function create($input)
    {
        return Product::create($input);
    }

    public function update($product, $input)
    {
        if (!$product instanceof Product) {
            return false;
        }

        $product->update($input);

        return $product;
    }

    public function delete($product)
    {
        if (!$product instanceof Product) {
            return false;
        }

        $product->delete();

        return true;
    }
}
