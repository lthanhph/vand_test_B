<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\StoreRepository;
use Illuminate\Support\Facades\Validator;

class StoreController extends Controller
{
    private $repository;
    public function __construct()
    {
        $this->repository = new StoreRepository();
    }

    public function index() {
        return response()->json([
            'stores' => $this->repository->paginate(),
        ]);
    }

    public function detail($id) {
        $store = $this->repository->getDetail($id);
        if (empty($store)) {
            return response()->json([
                'code' => 400,
                'message' => 'Store not found',
            ]);
        }
        
        return response()->json([
            'code' => 200,
            'message' => 'Get store detail success',
            'data' => $store,
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

        $stores = $this->repository->search($search);
        if ($stores->isEmpty()) {
            return response()->json([
                'code' => 400,
                'message' => 'Not found',
            ]);
        }

        return response()->json([
            'code' => 200,
            'message' => 'Get search result success',
            'count' => $stores->count(),
            'data' => $stores,
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
        $store = $this->repository->create($input);

        return response()->json([
            'code' => 200,
            'message' => 'create store success',
            'data' => $store,
        ]);
    }

    public function update($id, Request $request) 
    {
        $store = $this->repository->find($id);
        if (empty($store)) {
            return response()->json([
                'code' => 400,
                'message' => 'Store not exists',
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
        $store = $this->repository->update($store, $input);

        if (!$store) {
            return response()->json([
                'code' => 500,
                'message' => 'Internal server error',
            ]);
        }

        return response()->json([
            'code' => 200,
            'message' => 'update store success',
            'data' => $store,
        ]);
    }

    public function delete($id)
    {
        $store = $this->repository->find($id);
        if (empty($store)) {
            return response()->json([
                'code' => 400,
                'message' => 'Store not exists',
            ]);
        };

        $this->repository->delete($store);

        return response()->json([
            'code' => 200,
            'message' => 'delete store success',
        ]);
    }
}
