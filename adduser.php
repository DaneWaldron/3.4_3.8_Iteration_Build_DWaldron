<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
    exit();
} else {
    $User = $_SESSION['login_user'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jittle Music - Add User</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="login">
    <div class="container">
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
        </div>
        <div class="login-container">
            <h1>Add User</h1>  
            <p>Create the user's name and password.</p>
            <form action="#" method="post">
                <input type="username" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" class="button">Add User</button>
                <button type="button" class="button"><a href="Accounts.php">Back</a></button>
            </form>
        </div>
    </div>
    <div class="separator"></div>
    <footer>
        <p>Jittle Music</p>
        <div class="social-icons">
            <a href="#"><img src="Youtube.png" alt="YouTube"></a>
            <a href="#"><img src="Instagram.png" alt="Instagram"></a>
        </div>
    </footer>
    <?php
        //connect.php (tells where to connect servername, username, password, dbaseName)
        require "13DIT_mysqli.php";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $UserID = $_POST['username'] ?? '';
            $PW = $_POST['password'] ?? '';

            if (!empty($UserID) && !empty($PW)) {
                // Prepare and bind
                $stmt = $conn->prepare("INSERT INTO User (User_ID, Password) VALUES (?, ?)");
                $stmt->bind_param("ss", $UserID, $PW);

                if ($stmt->execute()) {
                    echo "<p class='grey'>Record Inserted</p>";
                } else {
                    echo "<p class='grey'>Error inserting record" . $stmt->error . "</p>";
                }
                $stmt->close();
            } else {
                echo "<p class='grey'>Please fill in both fields.</p>";
            }
        }

        $conn->close();
    ?>
</body>
</html>
