<?php
header("Content-Type: application/json");

// Include the database connection file
include 'db.php'; // Use the centralized `db.php` file for the connection

// Get the JSON payload
$data = json_decode(file_get_contents('php://input'), true);

// Validate the input
if (!isset($data['user_id']) || empty(trim($data['user_id']))) {
    echo json_encode(["success" => false, "message" => "User ID is required"]);
    exit;
}

$userId = trim($data['user_id']); // Clean the input

try {
    // Prepare the SQL query to filter by the given userId
    $sql = "SELECT id, userId, name, age, gender, phn, password, image, doctorId 
            FROM logs1 
            WHERE userId = ?";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        throw new Exception("Failed to prepare the statement: " . $conn->error);
    }

    $stmt->bind_param("s", $userId); // 's' indicates the parameter is a string
    $stmt->execute();
    $result = $stmt->get_result();

    $data = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        echo json_encode(["success" => true, "data" => $data]);
    } else {
        echo json_encode(["success" => false, "message" => "No records found for the given user ID"]);
    }
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Error: " . $e->getMessage()]);
} finally {
    $stmt->close();
    $conn->close();
}
?>
