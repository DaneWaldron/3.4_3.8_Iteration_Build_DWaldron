<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
    exit();
}

// Connect to the database
require "13DIT_mysqli.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jittle Music - Accounts</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
            <h1>Jittle Music</h1>
        </div>
        <nav>
            <button type="button" class="button"><a href="ForYou.php">For You</a></button>
        </nav>
    </header>
    
    <main>
        <h2>Accounts</h2>
        <p>Here are the displayed accounts:</p>
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Fetch user data from the database
                $query = "SELECT User_ID, Password FROM User";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['User_ID']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['Password']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>No users found</td></tr>";
                }

                // Close the database connection
                $conn->close();
                ?>
            </tbody>
        </table>
    </main>
    
    <footer>
        <p>© Dane Waldron 2024s</p>
        <div class="social-icons">
            <a href="#"><img src="Youtube.png" alt="YouTube"></a>
            <a href="#"><img src="Instagram.png" alt="Instagram"></a>
        </div>
    </footer>
</body>
</html>
