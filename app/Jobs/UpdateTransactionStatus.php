<?php

namespace App\Jobs;

use App\Models\Transanction;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Log;

class UpdateTransactionStatus implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $transactionReference;

    /**
     * Create a new job instance.
     */
    public function __construct(string $transactionReference)
    {
        $this->transactionReference = $transactionReference;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        // Simulate a long-running process
        sleep(30);

        $transaction = Transanction::where('reference_number', $this->transactionReference)->first();

        if ($transaction) {
            $transaction->update(['status' => 'SUCCESSFUL']);
            Log::info("Transaction {$this->transactionReference} updated to successful.");
        } else {
            Log::error("Transaction with reference {$this->transactionReference} not found.");
        }
    }
}
