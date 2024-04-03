<?php
ob_start();
ini_set('memory_limit', '256M'); // Set the memory limit to 256 megabytes
// Start output buffering
require_once('_core/_functions.php');
// Connect to your database
global $conn;
$conn = $db;
try {
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    // Function to fetch contests that have just finished
    function fetchFinishedContests()
    {
        global $conn;
        // Set the time zone
        $queryTimeZone = "SET time_zone = '+01:00';";
        $resultTimeZone = $conn->query($queryTimeZone);

        if (!$resultTimeZone) {
            echo "Error setting time zone: " . $conn->error;
            return null;
        }

        // Execute the main SELECT query
        $querySelect = "SELECT contest.*, NOW() AS currenttimestamp
                FROM contest
                WHERE end >= NOW() - INTERVAL 59 SECOND AND end <= NOW() - INTERVAL 1 SECOND;";
        $resultSelect = $conn->query($querySelect);

        if ($resultSelect) {
            while ($row = $resultSelect->fetch_assoc()) {
                $rows[] = $row;
            }
            return $rows;
        } else {
            echo "Error executing SELECT query: " . $conn->error;
            return null;
        }
    }

    // Function to fetch winner details for a given contest ID
    function fetchWinnerDetails($contestId)
    {
        global $conn;
        $query = "SELECT u.name AS winner_username, c.photo AS contest_photo, c.id AS photo_id
              FROM users u
              JOIN content c ON u.id = c.iduser
              WHERE c.contest = $contestId
              ORDER BY c.rating DESC LIMIT 1";
        $result = $conn->query($query);
        return $result->fetch_assoc();
    }

    // Function to fetch all user names and emails
    function fetchAllUsers()
    {
        global $conn;
        $query = "SELECT name, email FROM users";
        $result = $conn->query($query);
        return $result->fetch_all(MYSQLI_ASSOC);
    }



    // Function to process contests and send emails
    // Function to process contests and send emails
    function processContests()
    {
        $contests = fetchFinishedContests();
        if (!empty($contests)) {
            // End output buffering and get the buffered content
            $output = '';

            $output .= 'contests:' . json_encode($contests);
            $users = fetchAllUsers();
            //echo 'users:'.json_encode($users);
            foreach ($contests as $contest) {

                $contestId = $contest['id'];
                $winnerDetails = fetchWinnerDetails($contestId);
                if (!empty($winnerDetails))
                    $output .= 'winner Detail:' . json_encode($winnerDetails);

                $emailSubject = "Contest Ended - Congratulations!";
                foreach ($users as $user) {
                    $email = $user['email'];
                    $name = $user['name'];

                    /*  $emailMessage = "Dear $name,
               
                The contest: {$contest['title']} has just ended, and congratulations to {$winnerDetails['winner_username']} for winning.
                
                Better luck next time. We will let you know when more giveaways are created.
                
                Warm Regards,
                GiveawayNG"; */

                    $emailMessage = "<html>
                    <head>
                        <style>
                            body {
                                font-family: 'Arial', sans-serif;
                                font-size: 14px;
                            }

                            .email-container {
                                max-width: 600px;
                                margin: 0 auto;
                            }

                            .greeting {
                                font-size: 18px;
                                font-weight: bold;
                                margin-bottom: 10px;
                            }

                            .message {
                                margin-bottom: 20px;
                            }

                            .signature {
                                margin-top: 20px;
                                font-style: italic;
                            }
                        </style>
                    </head>
                    <body>
                        <div class='email-container'>
                            <div class='greeting'>
                                Dear $name,
                            </div>

                            <div class='message'>
                                The contest: <strong>{$contest['title']}</strong> has just ended, and congratulations to <strong>{$winnerDetails['winner_username']}</strong> for winning.
                                <br><br>
                                Better luck next time. We will let you know when more giveaways are created.
                            </div>

                            <div class='signature'>
                                Warm Regards,<br>
                                GiveawayNG<br>
                                <a href='http://giveawayng.com'>giveawayng.com</a>
                            </div>
                        </div>
                    </body>
                    </html>";

                    // if($email =='shumailasiddique555@gmail.com')
                    $emailResult = sendEmail($email, $name, $emailSubject, $emailMessage);
                    if ($emailResult['success']) {
                        echo 'Email sent successfully.';
                    } else {
                        echo 'Error: ' . $emailResult['msg'];
                    }
                }
            }

            $logFilePath =  __DIR__ . '/logs/' . date('Y-m-d_H:i:s') . '_contest_end_email_log.txt';

            // Log the output to the file
            file_put_contents($logFilePath, $output, FILE_APPEND);
            return true;
        } else {
            echo 'no contest found';
            ob_end_clean();
            exit();
        }
    }


    // Run the scheduler every minute
    while (true) {
        $bol = processContests();
        sleep(60);
    }
} catch (Exception $e) {
    echo 'An error occurred: ' . $e->getMessage();
}
