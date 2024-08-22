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
    <title>Jittle Music - Delete User</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <body class="login">
    <div class="container">
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
        </div>
        <div class="login-container">
            <h1>Delete User</h1>  
            <p>Enter the username of the user you wish to delete.</p>
            <form action="#" method="post">
                <input type="username" name="username" placeholder="Username" required>
                <button type="submit">Delete User</button>
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

            if (!empty($UserID)) {
                // Prepare and bind
                $stmt = $conn->prepare("DELETE FROM User WHERE User_ID = ?");
                $stmt->bind_param("s", $UserID);

                if ($stmt->execute()) {
                    echo "<p class='grey'>Record deleted:</p>";
                } else {
                    echo "<p class='grey'>Error deleting record: " . $stmt->error . "</p>";
                }
                $stmt->close();
            } else {
                echo "<p class='grey'>Please fill in the username field.</p>";
            }
        }

        $conn->close();
        ?>
</body>
</html>
