<?php
header("Content-Type: application/json");

$response = array();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get data from request
    $data = json_decode(file_get_contents('php://input'), true);

    if (isset($data['userId'], $data['date'])) {
        $userId = $data['userId'];
        $date = $data['date'];

        // Include database connection
        include 'db.php';

        // Prepare SQL statement to fetch records based on userId and date
        $stmt = $conn->prepare("SELECT date, result_id, user_id, total_score, disability_level, percentage
                                FROM user_results
                                WHERE user_id = ? AND date = ?");
        $stmt->bind_param("ss", $userId, $date);

        // Execute query
        if ($stmt->execute()) {
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                $response['success'] = true;
                $response['data'] = array();

                // Fetch all results
                while ($row = $result->fetch_assoc()) {
                    $response['data'][] = $row;
                }
            } else {
                $response['success'] = false;
                $response['message'] = "No records found for the given userId and date.";
            }
        } else {
            $response['success'] = false;
            $response['message'] = "Failed to execute query: " . $stmt->error;
        }

        // Close the statement and connection
        $stmt->close();
        $conn->close();
    } else {
        $response['success'] = false;
        $response['message'] = "Required fields (userId, date) are missing.";
    }
} else {
    $response['success'] = false;
    $response['message'] = "Invalid request method.";
}

// Return JSON response
echo json_encode($response);
?>
