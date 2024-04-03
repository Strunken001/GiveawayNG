<?php

$url = "https://api.paystack.co/transaction/initialize";
$authorization = "Authorization: Bearer pk_test_8be92ecbb6cbca47bdbb7c68dba3765d5e472106";
$content_type = "Content-Type: application/json";
$data = json_encode([
    "email" => "shumailasiddique55@yahoo.com",
    "amount" => 20000
]);

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [$authorization, $content_type]);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_POST, 1);

$response = curl_exec($ch);

if (curl_errno($ch)) {
    echo 'Curl error: ' . curl_error($ch);
}

curl_close($ch);

// Process $response as needed
echo $response;
?>
