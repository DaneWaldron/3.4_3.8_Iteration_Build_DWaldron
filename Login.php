<?php
    ob_start();
    session_start();
    $error = NULL;
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        //connect.php (tells where to connect servername, dbaseName, username, password)
        require "13DIT_mysqli.php";
        // username and password sent from form
        $myusername = mysqli_real_escape_string($conn,$_POST['username']);
        $mypassword = mysqli_real_escape_string($conn,$_POST['password']);
       
        $query = "SELECT User_ID FROM User WHERE User_ID = '$myusername' and Password = '$mypassword'";
       
        $result = mysqli_query($conn,$query);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
       
        $count = mysqli_num_rows($result);
       
        // If result matched $myusername and $mypassword, table row must be 1 row
        if($count == 1) {
            $_SESSION['login_user'] = $myusername;
            header("location: ForYou.php");
        } 
				if (($myusername == "Graeme" or $myusername == "graeme") && $mypassword == "12345") {
			header("location: AdminForYou.php"); 
		} else {
            $error = "ERROR! Your Login Name or Password is invalid";
        }
    }
    ob_end_flush();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jittle Music - Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <body class="login">
    <div class="container">
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
        </div>
        <div class="login-container">
            <h1>Login</h1>  
            <p>Please login to continue further</p>
            <form action="#" method="post">
                <input type="username" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Login</button>
				<?php
                    if ($error) {
                        echo "<p class='error-message'>$error</p>";
                    }
                ?>
            </form>
        </div>
        </div>
    </div>
    <div class="separator"></div>
    <footer>
        <p>© Dane Waldron 2024</p>
        <div class="social-icons">
            <a href="#"><img src="Youtube.png" alt="YouTube"></a>
            <a href="#"><img src="Instagram.png" alt="Instagram"></a>
        </div>
    </footer>
</body>
</html>
