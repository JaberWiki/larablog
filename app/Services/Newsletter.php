<?php
namespace App\Services;

use MailchimpMarketing\ApiClient;
use phpDocumentor\Reflection\Types\Null_;

class Newsletter
{
    public function subcribe(string $email, string $list = null)
    {        
        $list ??= config('services.mailchimp.lists.subscribers');
        return $this->clients()->lists->addListMember($list, [
            "email_address" => $email,
            "status" => "subscribed",
        ]);
    }

    protected function clients(){
        return (new ApiClient())->setConfig([
            'apiKey' => config('services.mailchimp.key'),
            'server' => 'us20'
        ]);
    }
}
