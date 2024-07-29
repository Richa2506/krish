 <?php
// Process form submission
/* if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["name"];
    $email = $_POST["email"];

    // Generate/download the brochure (replace 'brochure.pdf' with your actual brochure file path)
    $file = 'brochure.pdf';
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="'.basename($file).'"');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    readfile($file);
    exit;
} else {
    // Redirect back to the download page if accessed directly without form submission
    header("Location: index.html");
    exit;
} */
?>





<?php
// Database configuration
$host = 'localhost';
$dbname = 'krish';
$username = 'root';
$password = '';

// Connect to the database
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// Validate form data
$name = $_POST['name'] ?? '';
$email = $_POST['email'] ?? '';
$phone = $_POST['phone'] ?? ''; // New phone variable

if(empty($name) || empty($email) || empty($phone)) {
    die("Please provide your name, email, and phone number.");
}

// Insert data into the database
try {
    $stmt = $conn->prepare("INSERT INTO brochure_downloads (name, email, phone) VALUES (:name, :email, :phone)"); // Updated query
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':phone', $phone); // Bind phone number parameter
    $stmt->execute();
} catch(PDOException $e) {
    die("Error inserting data into the database: " . $e->getMessage());
}

// Download the brochure file
$brochureFilePath = 'Dream 24 (Brochure).pdf'; // Update with the actual file path
$brochureFileName = 'Dream 24 (Brochure).pdf';

header('Content-Description: File Transfer');
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="' . $brochureFileName . '"');
readfile($brochureFilePath);
?>

