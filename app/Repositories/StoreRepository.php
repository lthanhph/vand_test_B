<?php

namespace App\Repositories;

use App\Models\Store;

class StoreRepository
{
    public $rules = [
        'title' => 'required|max:255',
        'description' => 'required',
        'user_id' => 'required|exists:users,id'
    ];

    public function find($id)
    {
        return Store::find($id);
    }

    public function getDetail($id)
    {
        return Store::where('id', $id)->with('products')->get();
    }

    public function search($search)
    {
        return Store::where('title', 'like', '%' . $search . '%')
            ->orWhere('description', 'like', '%' . $search . '%')
            ->get();
    }

    public function paginate()
    {
        return Store::paginate();
    }

    public function create($input)
    {
        return Store::create($input);
    }

    public function update($store, $input)
    {
        if (!$store instanceof Store) {
            return false;
        }

        $store->update($input);

        return $store;
    }

    public function delete($store)
    {
        if (!$store instanceof Store) {
            return false;
        }

        $store->products()->delete();
        $store->delete();

        return true;
    }
}
