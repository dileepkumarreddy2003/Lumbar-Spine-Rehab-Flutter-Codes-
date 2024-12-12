<?php
header("Content-Type: application/json");

include 'db.php';

$data = json_decode(file_get_contents("php://input"));

if (!$data) {
  echo json_encode(array('success' => false, 'error' => 'Invalid JSON'));
  exit;
}

$date = isset($data->date) ? $conn->real_escape_string($data->date) : null;
$time = isset($data->time) ? $conn->real_escape_string($data->time) : null;
$pid = isset($data->pid) ? $conn->real_escape_string($data->pid) : null;
$dname = isset($data->dname) ? $conn->real_escape_string($data->dname) : null;
$did = isset($data->did) ? $conn->real_escape_string($data->did) : null;

$response = array();

if ($date && $time && $pid && $dname && $did) {
  // Insert appointment details into the database and set status as 'pending'
  $sql = "INSERT INTO appt (date, time, pid, dname, did, status) VALUES ('$date', '$time', '$pid', '$dname', '$did', 'pending')";

  if ($conn->query($sql) === TRUE) {
    $response['success'] = true;
  } else {
    $response['success'] = false;
    $response['error'] = $conn->error;
  }
} else {
  $response['success'] = false;
  $response['error'] = 'Missing parameters';
}

$conn->close();

echo json_encode($response);
?>
