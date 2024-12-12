<?php
// result.php

include 'db.php'; // Include the database connection file

// Check if data is sent via POST request
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve data from POST request
    $userId = isset($_POST['userId']) ? trim($_POST['userId']) : null;
    $score = isset($_POST['score']) ? trim($_POST['score']) : null;

    // Debug output to ensure data is received correctly
    error_log("Received userId: " . $userId);
    error_log("Received score: " . $score);

    // Validate input data
    if ($userId && $score !== null) {
        try {
            // Prepare SQL query to insert data into questionaries table
            $stmt = $pdo->prepare("INSERT INTO questionaries (user_Id, score) VALUES (:userid, :score)");

            // Bind parameters
            $stmt->bindParam(':userid', $userId);
            $stmt->bindParam(':score', $score);

            // Execute the query
            $stmt->execute();

            // Return a success response
            echo json_encode(['success' => true, 'message' => 'Data stored successfully']);
        } catch (PDOException $e) {
            // Return an error response
            echo json_encode(['success' => false, 'message' => $e->getMessage()]);
        }
    } else {
        // Return a validation error response
        echo json_encode(['success' => false, 'message' => 'Invalid input data']);
    }
} else {
    // Return an error response for invalid request method
    echo json_encode(['success' => false, 'message' => 'Invalid request method']);
}
?>
