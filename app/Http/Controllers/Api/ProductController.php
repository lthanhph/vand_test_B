<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\ProductRepository;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    private $repository;
    public function __construct()
    {
        $this->repository = new ProductRepository();
    }

    public function index() {
        return response()->json([
            'stores' => $this->repository->paginate(),
        ]);
    }

    public function detail($id) {
        $product = $this->repository->find($id);
        if (empty($product)) {
            return response()->json([
                'code' => 400,
                'message' => 'Product not found',
            ]);
        }
        
        return response()->json([
            'code' => 200,
            'message' => 'Get product detail success',
            'data' => $product,
        ]);
    }

    public function search(Request $request)
    {
        $search = $request->input('search');
        if (empty($search)) {
            return response()->json([
                'code' => 400,
                'message' => 'Search input is empty',
            ]); 
        }

        $products = $this->repository->search($search);
        if ($products->isEmpty()) {
            return response()->json([
                'code' => 400,
                'message' => 'Not found',
            ]);
        }

        return response()->json([
            'code' => 200,
            'message' => 'Get search result success',
            'count' => $products->count(),
            'data' => $products,
        ]);
    }

    public function create(Request $request) {
        $validator = Validator::make(
            $request->all(),
            $this->repository->rules,
        );
        
        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => $validator->errors()->first(),
            ]);
        }

        $input = $validator->validated();
        $product = $this->repository->create($input);

        return response()->json([
            'code' => 200,
            'message' => 'create product success',
            'data' => $product,
        ]);
    }

    public function update($id, Request $request) 
    {
        $product = $this->repository->find($id);
        if (empty($product)) {
            return response()->json([
                'code' => 400,
                'message' => 'Product not exists',
            ]);
        };

        $validator = Validator::make(
            $request->all(),
            $this->repository->rules,
        );
        
        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => $validator->errors()->first(),
            ]);
        }

        $input = $validator->validated();
        $product = $this->repository->update($product, $input);

        if (!$product) {
            return response()->json([
                'code' => 500,
                'message' => 'Internal server error',
            ]);
        }

        return response()->json([
            'code' => 200,
            'message' => 'update product success',
            'data' => $product,
        ]);
    }

    public function delete($id)
    {
        $product = $this->repository->find($id);
        if (empty($product)) {
            return response()->json([
                'code' => 400,
                'message' => 'Product not exists',
            ]);
        };

        $this->repository->delete($product);

        return response()->json([
            'code' => 200,
            'message' => 'delete product success',
        ]);
    }
}
