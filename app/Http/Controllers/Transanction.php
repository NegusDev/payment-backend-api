<?php

namespace App\Http\Controllers;

use App\Jobs\UpdateTransactionStatus;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Transanction extends Controller
{
    public function index()
    {
        $transactions = \App\Models\Transanction::orderBy('created_at', 'desc')->get();

        if ($transactions->isEmpty()) {
            return response()->json(
                [
                    'status' => 404,
                    'message' => 'No transactions found',
                ],
                404
            );
        }
        return response()->json(
            [
                'status' => 200,
                'message' => 'Transaction List',
                'data' => $transactions
            ],
            200
        );
    }

    public function store(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'payer' => 'required|int|digits:10',
                'payee' => 'required|int|digits:10',
                'amount' => 'required|numeric',
                'currency' => 'required|string|max:3',
                'notes' => 'nullable|string|max:255',
            ],
        );


        if ($validator->fails()) {
            return response()->json(
                [
                    'status' => 400,
                    'message' => $validator->errors()
                ],
                400
            );
        }

        try {

            if ($request->payer === $request->payee) {
                return response()->json(
                    [
                        'status' => 400,
                        'message' => "Transanction failed: The Sender account number is the same as the receiver account number ",
                    ],
                    400
                );
            }

            $data = [
                'reference_number' => 'TRX-' . time(),
                'payer' => $request->payer,
                'payee' => $request->payee,
                'amount' => $request->amount,
                'currency' => $request->currency,
                'notes' => $request->notes ?? NULL,
            ];

            $transaction = \App\Models\Transanction::create($data);

            UpdateTransactionStatus::dispatch($transaction->reference_number)->delay(now()->addSeconds(10));

            return response()->json(
                [
                    'status' => 100,
                    'message' => 'Transaction Initiated. Processing...',
                    'transactionReference' => $transaction->reference_number,
                    'data' => $transaction,
                ],
                202
            );
        } catch (Exception $e) {
            return response()->json(
                [
                    'message' => 'Connection failed: ' . $e->getMessage()
                ],
                500
            );
        }
    }

    public function checkTransactionStatus(Request $request)
    {

        $transaction = \App\Models\Transanction::where('reference_number', $request->transactionReference)->first();

        if (!$transaction) {
            return response()->json(
                [
                    'status' => 404,
                    'message' => 'Transaction not found',
                ],
                404
            );
        }

        return response()->json(
            [
                'status' => 200,
                'message' => 'Transaction Status',
                'data' => $transaction
            ],
            200
        );
    }
}
