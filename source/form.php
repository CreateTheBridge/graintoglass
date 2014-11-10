<?php
// include phpmailer to add email functionality
include_once("class.phpmailer.php");

// create local variables from post
$address = $_POST['address'];
$name = $_POST['name'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];



// configure how phpmailer behaves
$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->Host = "smtp.googlemail.com";

$mail->SMTPSecure = "ssl";
$mail->Port = 465;

$mail->Username = "hello@modifir.com";
$mail->Password = "Greenecho123!";

$mail->AddAddress("hello@modifir.com");
$mail->From = "hello@modifir.com";
$mail->FromName = $_POST['name'];
$mail->Subject = $_POST['email'];
$mail->IsHTML(true);
$mail->Body="
Name: $name <br>
Address: $address <br>
Telephone: $telephone <br>
Email: $email <br>";

if(!$mail->Send()) {
   echo 'Message could not be sent.';
   echo 'Mailer Error: ' . $mail->ErrorInfo;
   exit;
}
?>