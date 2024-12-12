<?php
// Enable CORS
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

// Include the database connection file
include('db.php'); // Make sure db.php is in the same directory or adjust the path accordingly

// Ensure the request is a POST request
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(["status" => "error", "message" => "Invalid request method"]);
    exit();
}

// Check if all required fields are set
$requiredFields = ['userId', 'name', 'age', 'gender', 'phn', 'password', 'doctorId'];
foreach ($requiredFields as $field) {
    if (!isset($_POST[$field])) {
        echo json_encode(["status" => "error", "message" => "Missing required field: $field"]);
        exit();
    }
}

// Retrieve POST data
$userId = $_POST['userId'];
$name = $_POST['name'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$phn = $_POST['phn'];
$password = $_POST['password']; // Plain text password
$doctorId = $_POST['doctorId'];

// Hash the password
$hashedPassword = password_hash($password, PASSWORD_BCRYPT);

// Handle file upload
$target_file = '';
if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
    $target_dir = "uploads/";
    if (!is_dir($target_dir)) {
        mkdir($target_dir, 0777, true);
    }

    $target_file = $target_dir . uniqid() . '_' . basename($_FILES["image"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    $check = getimagesize($_FILES["image"]["tmp_name"]);
    if ($check === false || $_FILES["image"]["size"] > 5000000 || !in_array($imageFileType, ["jpg", "jpeg", "png", "gif"])) {
        echo json_encode(["status" => "error", "message" => "Invalid file"]);
        exit();
    }

    if (!move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        echo json_encode(["status" => "error", "message" => "Failed to upload file"]);
        exit();
    }
}

// Insert patient data with hashed password
$insert_sql = "INSERT INTO logs1 (userId, name, age, gender, phn, password, image, doctorId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
$insert_stmt = $conn->prepare($insert_sql);

if (!$insert_stmt) {
    echo json_encode(["status" => "error", "message" => "SQL prepare error: " . $conn->error]);
    exit();
}

$insert_stmt->bind_param(
    "ssisssss",
    $userId,
    $name,
    $age,
    $gender,
    $phn,
    $hashedPassword, // Store hashed password
    $target_file,
    $doctorId
);

if ($insert_stmt->execute()) {
    echo json_encode(["status" => "success", "message" => "Patient added successfully", "id" => $insert_stmt->insert_id]);
} else {
    echo json_encode(["status" => "error", "message" => "SQL execution error: " . $conn->error]);
}

$insert_stmt->close();
$conn->close();
?>
