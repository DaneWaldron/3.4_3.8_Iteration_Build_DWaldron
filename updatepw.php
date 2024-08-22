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
    <title>Jittle Music - Update User Password</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="login">
    <div class="container">
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
        </div>
        <div class="login-container">
            <h1>Update User Password</h1>  
            <p>Enter the username and the new password.</p>
            <form action="#" method="post">
                <input type="username" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="New Password" required>
                <button type="submit" class="button">Update Password</button>
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
                $stmt = $conn->prepare("UPDATE User SET Password = ? WHERE User_ID = ?");
                $stmt->bind_param("ss", $PW, $UserID);

                if ($stmt->execute()) {
                    echo "<p class='grey'>Password Updated Successfully!</p>";
                } else {
                    echo "<p class='grey'>Error Updating Password" . $stmt->error . "</p>";
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
