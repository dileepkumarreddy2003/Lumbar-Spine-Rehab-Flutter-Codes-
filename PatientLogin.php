<?php

include 'db.php';

$data = json_decode(file_get_contents("php://input"));
$userId = $data->userId;
$password = $data->password;

$query = "SELECT * FROM logs1 WHERE userId = ? AND password = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $userId, $password);  // 'ss' specifies the type of the parameters (string)

$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo json_encode(['success' => true, 'message' => 'Login successful']);
} else {
    // User not found or credentials don't match
    echo json_encode(['success' => false, 'message' => 'Invalid user ID or password']);
}

// Close the connection
$stmt->close();
$conn->close();
?>