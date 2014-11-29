<?php

header("content-type:application/json");

$url = 'http://mcallen.taphunter.com/widgets/locationWidget?location=Grain-To-Glass&format=jsonv2short';
$curl_session = curl_init($url);
curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl_session, CURLOPT_CONNECTTIMEOUT, 4);
curl_setopt($curl_session, CURLOPT_TIMEOUT, 10);
$data = curl_exec($curl_session);
curl_close($curl_session);
echo $data;
exit();

?>