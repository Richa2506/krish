<?php
require_once "admin/config.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first_name'] ?? '';
    $last_name = $_POST['last_name'] ?? '';
    $email = $_POST['email'] ?? '';
    $phone = $_POST['phone'] ?? '';
    $select_service = $_POST['select_service'] ?? '';
    $comments = $_POST['comments'] ?? '';

    // Insert data into the database
    try {
        $stmt = $conn->prepare("INSERT INTO contact_requests (first_name, last_name, email, phone, select_service, comments) VALUES (:first_name, :last_name, :email, :phone, :select_service, :comments)");
        $stmt->bindParam(':first_name', $first_name);
        $stmt->bindParam(':last_name', $last_name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':phone', $phone);
        $stmt->bindParam(':select_service', $select_service);
        $stmt->bindParam(':comments', $comments);
        $stmt->execute();
        header("Location: thank_you.php"); // Redirect to a thank you page after successful submission
        exit();
    } catch(PDOException $e) {
        die("Error inserting data into the database: " . $e->getMessage());
    }
}
?>
