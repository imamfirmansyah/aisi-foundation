<?php

namespace App\Http\Controllers;

use App\Service\MailerService;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function sendEmail(Request $request)
    {
        $contact = array();
        $contact['name'] = 'Kincat';
        $contact['email'] = 'yohankinata@gmail.com';
        $contact['subject'] = 'Test Email';
        $contact['message'] = 'WKWKWKW';
        $mail = MailerService::contact($contact);

        if($mail['status']){
            return "success";
        }else{
            return "failed";
        }
    }
}
