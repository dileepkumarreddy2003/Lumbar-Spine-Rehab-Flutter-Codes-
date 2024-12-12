<?php
// Include the database connection file
include('db.php'); // Make sure db.php is in the same directory or adjust the path accordingly

// Check if request method is POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the raw POST data (JSON)
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);

    // Validate the user_id
    if (isset($data['user_id'])) {
        $user_id = $data['user_id'];

        // SQL query to select the required fields
        $sql = "SELECT question_id, question, option1, option2, option3, option4, option5, option6 FROM question1";
        
        // Execute the query
        $result = $conn->query($sql);

        // Check if any records were returned
        if ($result->num_rows > 0) {
            // Prepare the data in an array
            $data = array();
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
            // Return the data as a JSON response
            echo json_encode($data);
        } else {
            echo json_encode(array("message" => "No results found."));
        }
    } else {
        echo json_encode(array("message" => "Missing user_id."));
    }
} else {
    echo json_encode(array("message" => "Invalid request method."));
}

// Close the database connection
$conn->close();
?>
