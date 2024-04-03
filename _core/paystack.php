<?php


session_start();

require_once('_functions.php');
	
	$settings = get_settings();


	if(isset($_POST['action']) && !empty($_POST['action'])) {
		$contest_id = echo"contest".$_POST['item_id'];

		$uid = $_POST['action']['reference'];
		// die;
		$orderId = $uid;

		print_r($_POST);

		// die;

		$sql_user = mysqli_query($db,"SELECT * FROM `users` WHERE `id` = '".$_POST['logged_id']."' LIMIT 1");
		$fetch_user = mysqli_fetch_array($sql_user);

		$return['user_name'] = $fetch_user['name'];
		$return['user_email'] = $fetch_user['email'];

		$return['order_id'] = $orderId;
		$return['currency'] = $settings['paypal_currency'];
		$return['price'] = $settings['user_contest_price'];
		$return['item_name'] = _LANG_PAY_THE_CONTEST;

		$return['return_url'] = $settings['site_url'].'_payments/paypal_success.php';

		// $unid = md5($_SESSION['_logged_id'].$item_id.time());
		$unid = $_POST['action']['reference'];
		mysqli_query($db,"INSERT INTO `payments` (`txn_id`,`item_number`,`payment_gross`,`currency_code`,`payment_status`,`userid`) VALUES ('".$unid."','".$contest_id."','".$return['price']."','".$return['currency']."','Open','".$_POST['logged_id']."')");

		$return['unid'] = $unid;
		$return['error'] = 0;
        echo json_encode(array("blablabla"=>$return));
    }
?>