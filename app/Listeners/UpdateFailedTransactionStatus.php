<?php

namespace App\Listeners;

use App\Models\Transanction;
use Illuminate\Queue\Events\JobFailed;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Log;

class UpdateFailedTransactionStatus
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(JobFailed $event): void
    {
       // Check if the failed job is our UpdateTransactionStatus job
        if ($event->job->resolveName() === 'App\Jobs\UpdateTransactionStatus') {
            $payload = unserialize($event->job->payload()['data']['command']);

            if (isset($payload->transactionReference)) {
                $reference = $payload->transactionReference;
                $transaction = Transanction::where('reference_number', $reference)->first();

                if ($transaction && $transaction->status === 'PENDING') {
                    $transaction->update(['status' => 'FAILED']);
                    Log::error("Transaction {$reference} updated to failed due to job failure.");
                }
            } else {
                Log::error("Could not extract transaction reference from failed job payload.");
                Log::debug("Failed Job Payload: " . json_encode($event->job->payload()));
            }
        }
    }
}
