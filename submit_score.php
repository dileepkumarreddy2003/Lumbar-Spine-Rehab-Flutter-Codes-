<?php
// Include the database connection file
include('db.php'); // Adjust the path if needed

// Get the posted data
$postData = file_get_contents("php://input");
$data = json_decode($postData, true);

$user_id = $data['user_id'];
$question_id = $data['question_id'];
$question = $data['question'];
$selected_option = $data['selected_option'];
$score = $data['score'];

// Prepare the SQL query to insert the data
$sql = "INSERT INTO user_scores (user_id, question_id, question, selected_option, score) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sissi", $user_id, $question_id, $question, $selected_option, $score);

// Execute the statement
if ($stmt->execute()) {
    echo json_encode(["success" => true, "message" => "Score submitted successfully."]);
} else {
    echo json_encode(["success" => false, "message" => "Error submitting score."]);
}

// Close the statement and the connection
$stmt->close();
$conn->close();
?>
