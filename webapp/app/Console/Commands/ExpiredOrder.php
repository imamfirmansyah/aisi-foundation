<?php
namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\Util\Constant;
use App\Service\OrderService;

class ExpiredOrder extends Command {

    protected $name = 'order:expired';
    protected $description = 'Order expired after 2 days';

    public function handle() {
        OrderService::expiredOrder();
    }
}