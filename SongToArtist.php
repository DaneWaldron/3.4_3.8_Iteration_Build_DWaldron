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
    <title>Jittle Music - Main</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo">
            <img src="Logo.png" alt="Jittle Music Logo">
            <h1>Jittle Music</h1>
            <ul>
               <div class="user-actions">
                   <a onclick="goBack()" class="button">Back</a>
               </div>
            </ul>
        </div>
    </header>
    
    <main>
        <h2>Song To Artist</h2>
        <p>Displaying Song To Artist From Database:</p>
        <table>
            <thead>
                <tr>
                    <!-- Replace 'Column1' and 'Column2' with actual column names from your 'Main' table -->
                    <th>Song_ID</th>
					<th>Artist_ID</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Fetch data from the 'Main' table
                $query = "SELECT * From Main";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['Song_ID']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['Artist_ID']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>No records found</td></tr>";
                }

                // Close the database connection
                $conn->close();
                ?>
            </tbody>
        </table>
    </main>
    
    <footer>
        <p>© Dane Waldron 2024</p>
        <div class="social-icons">
            <a href="#"><img src="Youtube.png" alt="YouTube"></a>
            <a href="#"><img src="Instagram.png" alt="Instagram"></a>
        </div>
    </footer>
</body>
</html>
