<?php

header("content-type:application/json");

$url = 'https://www.taphunter.com/widgets/location/v3/5902362478641152.json';
$curl_session = curl_init($url);
curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl_session, CURLOPT_CONNECTTIMEOUT, 4);
curl_setopt($curl_session, CURLOPT_TIMEOUT, 10);
$data = curl_exec($curl_session);
curl_close($curl_session);
echo $data;
exit();

?>
