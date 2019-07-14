<?php
namespace App\Service;

use Illuminate\Support\Facades\Mail;

class MailerService {
    public static function contact($contact){
        try {
            Mail::send('email.test', ['contact'=>$contact],
                function ($message) use ($contact) {
                    $message
                        ->to($contact['email'])
                        ->subject('[Yayasan AISI Foundation] '.$contact['subject']);
                });
            $result['status'] = true;
        }catch(\Exception $msg){
            \Log::error($msg);
            $result['status'] = false;
            $result['message'] = $msg;
        }

        return $result;
    }
}
