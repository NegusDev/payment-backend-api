<?php

namespace App\Providers;

use App\Listeners\UpdateFailedTransactionStatus;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Queue\Events\JobFailed;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    protected $listen = [
        JobFailed::class => [
            UpdateFailedTransactionStatus::class,
        ],
    ];
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        ResetPassword::createUrlUsing(function (object $notifiable, string $token) {
            return config('app.frontend_url') . "/password-reset/$token?email={$notifiable->getEmailForPasswordReset()}";
        });
    }

    public function shouldDiscoverEvents(): bool
    {
        return true;
    }
}
