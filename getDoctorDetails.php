<?php
header("Content-Type: application/json");

// Include the database connection file
include 'db.php'; // Assuming you have a `db.php` file with the connection logic

// Get the doctor ID from the query parameter
$docid = isset($_GET['docid']) ? trim($_GET['docid']) : null;

if (!$docid) {
    echo json_encode(["success" => false, "message" => "Doctor ID is required."]);
    exit;
}

try {
    // Prepare and execute the SQL statement
    $sql = "SELECT name, mail, mob, docid, place, dept FROM signup WHERE docid = ?";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        throw new Exception("Failed to prepare the statement: " . $conn->error);
    }

    $stmt->bind_param("s", $docid);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a doctor is found
    if ($result->num_rows > 0) {
        $doctor = $result->fetch_assoc();
        echo json_encode(["success" => true, "doctor" => $doctor]);
    } else {
        echo json_encode(["success" => false, "message" => "Doctor not found."]);
    }
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Error: " . $e->getMessage()]);
} finally {
    // Close the statement and connection
    $stmt->close();
    $conn->close();
}
?>
