<?php
// Include the database connection file
include('db.php'); // Make sure the path to db.php is correct

// Get the posted data
$data = json_decode(file_get_contents("php://input"), true);

// Extract the values from the data
$name = $data['fullName'];
$reg_no = $data['reg_no']; 
$mail = $data['email'];
$mob = $data['mobileNumber'];
$gender = $data['gender'];
$dept = $data['department'];
$place = $data['workplace'];
$pass = $data['password'];
$cpass = $data['confirmPassword'];

// Ensure passwords match
if ($pass !== $cpass) {
    echo json_encode(["error" => "Passwords do not match"]);
    exit;
}

// Prepare the SQL query
$stmt = $conn->prepare("INSERT INTO signup (name, docid, mail, mob, gender, dept, place, pass, cpass) 
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("sssssssss", $name, $reg_no, $mail, $mob, $gender, $dept, $place, $pass, $cpass);

// Execute the statement
if ($stmt->execute()) {
    echo json_encode(["message" => "New record created successfully"]);
} else {
    echo json_encode(["error" => "Error: " . $stmt->error]);
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
