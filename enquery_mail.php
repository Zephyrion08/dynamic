<?php
require_once("includes/initialize.php");
$usermail = User::get_UseremailAddress_byId(1);
$ccusermail = User::field_by_id(1, 'optional_email');
$sitename = Config::getField('sitename', true);




foreach ($_POST as $key => $val) {
    $$key = $val;
}
// Safely get POST variables
$action = $_POST['action'] ?? ''; // Avoid undefined index warning

if ($action === "forContact"):


    $token = $_POST['g-recaptcha-response'] ?? '';

    if (empty($token)) {
        http_response_code(400);
        echo json_encode([
            "action" => "unsuccess",
            "message" => "Please complete the reCAPTCHA."
        ]);
        exit;
    }

    $secret = '6LcXLDMsAAAAAJ2ixoXLK9X0zgSG2h-I5PGJuIg_'; // move to env in production

    $ch = curl_init('https://www.google.com/recaptcha/api/siteverify');

    curl_setopt_array($ch, [
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => http_build_query([
            'secret' => $secret,
            'response' => $token,
            'remoteip' => $_SERVER['REMOTE_ADDR']
        ]),
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_TIMEOUT => 10,
        CURLOPT_SSL_VERIFYPEER => true
    ]);

    $response = curl_exec($ch);

    if ($response === false) {
        http_response_code(500);
        echo json_encode([
            "action" => "unsuccess",
            "message" => "reCAPTCHA verification request failed."
        ]);
        exit;
    }

    curl_close($ch);

    $result = json_decode($response, true);

    if (empty($result['success'])) {
        http_response_code(403);
        echo json_encode([
            "action" => "unsuccess",
            "message" => "reCAPTCHA verification failed."
        ]);
        exit;
    }

    /* ✅ Continue email logic here */






    // Extract variables safely
    $name = $_POST['name'] ?? '';
    $email = $_POST['email'] ?? '';
    $phone = $_POST['phone'] ?? '';
    $address = $_POST['address'] ?? '';
    $message = $_POST['message'] ?? '';

    $body = '
	<table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
	  <tr>
		<td><p>Dear Sir,</p>
		</td>
	  </tr>
	  <tr>
		<td><p><span style="color:#0065B3; font-size:14px; font-weight:bold">Comment message</span><br />
		  The details provided are:</p>
		  <p><strong>Fullname</strong> : ' . $name . '<br />		
		  <strong>E-mail Address</strong>: ' . $email . '<br />
		  <strong>Contact</strong>: ' . $phone . '<br />
		  <strong>Address</strong>: ' . $address . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
		</td>
	  </tr>
	  <tr>
		<td><p>&nbsp;</p>
		<p>Thank you,<br />
		' . $name . '
		</p></td>
	  </tr>
	</table>
	';

    /*
     * mail info
     */

    $mail = new PHPMailer(); // defaults to using php "mail()"

    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);

    $mail->AddAddress($usermail, $sitename);
    // if add extra email address on back end
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Enquiry mail from ' . $name;

    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    }
    echo json_encode([
        "action" => "success",
        "message" => "Your message has been successfully sent."
    ]);
    exit;
endif;


if ($action == "forHall"):
    $body = '
      <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
          <tr>
              <td><p>Dear Sir,</p></td>
          </tr>
          <tr>
              <td>
                  <p>
                      <span style="color:#0065B3; font-size:14px; font-weight:bold">Hall Inquiry message</span><br />
                      The details provided are:
                  </p>
                  <p>
                      <strong>Hall Name</strong> : ' . $hallname . '<br />		
                      <strong>Event Date</strong> : ' . $eventdate . '<br />		
                      <strong>Pax</strong> : ' . $eventpax . '<br />		
                      <strong>Schedule</strong> : ' . $schedule . '<br />		

                      <strong>Name</strong> : ' . $name . '<br />		
                      <strong>E-mail Address</strong>: ' . $email . '<br />
                      <strong>Phone</strong>: ' . $phone . '<br />
                      <strong>Address</strong>: ' . $Address . '<br />
                       <strong>Message</strong>: ' . $message . '<br />
                  </p>
              </td>
          </tr>
          <tr>
              <td>
                  <p>Thank you,<br />
                  ' . $name . '
                  </p>
              </td>
          </tr>
      </table>
';

    $mail = new PHPMailer();
    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);
    $mail->AddAddress($usermail, $sitename);
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Hall Inquiry mail from ' . $name;
    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
    }
endif;


if ($action == "foroffer"):
    $body = '
      <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
          <tr>
              <td><p>Dear Sir,</p></td>
          </tr>
          <tr>
              <td>
                  <p>
                      <span style="color:#0065B3; font-size:14px; font-weight:bold">Offer Inquiry message</span><br />
                      The details provided are:
                  </p>
                   <p><strong>Fullname</strong> : ' . $name . '<br />		
		  <strong>E-mail Address</strong>: ' . $email . '<br />
		  <strong>Contact</strong>: ' . $phone . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
              </td>
          </tr>
          <tr>
              <td>
                  <p>Thank you,<br />
                  ' . $name . '
                  </p>
              </td>
          </tr>
      </table>
';

    $mail = new PHPMailer();
    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);
    $mail->AddAddress($usermail, $sitename);
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Offer Inquiry mail from ' . $name . ' for ' . $offertitle . '';
    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
    }
endif;

if ($action == "foractivity"):
    $subpackagedata = Subpackage::find_by_slug($slug);

    if (!empty($subpackagedata)) {
        $price = $subpackagedata->currency . $subpackagedata->onep_price;
        $actname = $subpackagedata->title;

    }
    $body = '
      <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
          <tr>
              <td><p>Dear Sir,</p></td>
          </tr>
          <tr>
              <td>
                  <p>
                      <span style="color:#0065B3; font-size:14px; font-weight:bold">Activity Inquiry message</span><br />
                      The details provided are:
                  </p>
                   <p>
                   <strong>Activity name</strong> : ' . $actname . '<br />		
                   <strong>price</strong> : ' . $price . '<br />		
                   <strong>Fullname</strong> : ' . $name . '<br />		
		  <strong>E-mail Address</strong>: ' . $email . '<br />
		  <strong>Contact</strong>: ' . $phone . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
              </td>
          </tr>
          <tr>
              <td>
                  <p>Thank you,<br />
                  ' . $name . '
                  </p>
              </td>
          </tr>
      </table>
';

    $mail = new PHPMailer();
    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);
    $mail->AddAddress($usermail, $sitename);
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Activity Inquiry mail from ' . $name . ' for ' . $actname . '';
    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
    }
endif;


if ($action == "forblog"):
    $body = '
      <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
          <tr>
              <td><p>Dear Sir,</p></td>
          </tr>
          <tr>
              <td>
                  <p>
                      <span style="color:#0065B3; font-size:14px; font-weight:bold">Blog Comment</span><br />
                      The details provided are:
                  </p>
                   <p>
                   <strong>Fullname</strong> : ' . $name . '<br />		
		  <strong>E-mail Address</strong>: ' . $email . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
              </td>
          </tr>
          <tr>
              <td>
                  <p>Thank you,<br />
                  ' . $name . '
                  </p>
              </td>
          </tr>
      </table>
';

    $mail = new PHPMailer();
    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);
    $mail->AddAddress($usermail, $sitename);
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }

    $mail->Subject = 'Blog Comment from ' . $name . ' for ' . $blogtitle . ' ';
    $mail->MsgHTML($body);

    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
    }
endif;


?>