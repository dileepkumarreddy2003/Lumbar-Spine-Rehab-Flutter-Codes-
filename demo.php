<?php
// Include database connection
include 'db.php';

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // File upload path
    $targetDir = "uploads/";
    $videoFile = $_FILES["video"]["name"];
    $targetFilePath = $targetDir . basename($videoFile);

    // Other form inputs
    $video_name = $_POST['video_name'];
    $introduction = $_POST['introduction'];
    $custom_file_name = $_POST['custom_file_name'];
    $uploaded_at = date("Y-m-d H:i:s"); // current date and time

    // Move the uploaded file to the target directory
    if (move_uploaded_file($_FILES["video"]["tmp_name"], $targetFilePath)) {
        // Prepare and bind
        $stmt = $conn->prepare("INSERT INTO adddoctorvideos (video_name, video_path, introduction, custom_file_name, uploaded_at) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $video_name, $targetFilePath, $introduction, $custom_file_name, $uploaded_at);

        // Execute the statement
        if ($stmt->execute()) {
            echo "Video uploaded and data saved successfully.";
        } else {
            echo "Error: " . $stmt->error;
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

// Close the database connection
$conn->close();
?>
