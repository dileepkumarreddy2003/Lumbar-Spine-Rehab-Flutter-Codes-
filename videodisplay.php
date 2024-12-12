<?php
// Include the database connection file
include('db.php'); // Adjust the path if needed

// Fetch videos from the database
$sql = "SELECT id, video_name, video_path, introduction, custom_file_name, uploaded_at FROM adddoctorvideos";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $videos = [];

    // Loop through each row and append the base URL to the video path
    while ($row = $result->fetch_assoc()) {
        $row['video_path'] = $baseUrl . $row['video_path'];  // Using baseUrl from db.php
        $videos[] = $row;
    }

    // Output the result as JSON
    header('Content-Type: application/json');
    echo json_encode($videos);
} else {
    echo json_encode([]);
}

$conn->close();
?>
