<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jittle Music - Your Search</title>
    <link rel="stylesheet" href="style.css">
</head>
	<script>
        function goBack() {
            window.history.back();
        }
    </script>
<body>
    <header>
        <div class="header-left">
            <div class="logo">
                <img src="Logo.png" alt="Jittle Music Logo">
                <!-- Replace 'path/to/your/logo.png' with the correct path to your logo image -->
            </div>
            <div class="button-group">
				<button type="button" class="button"><a href="SongToArtist.php">Song To Artist</a></button>
				<button type="button" class="button"><a href="SongToGenre.php">Song To Genre</a></button>			
            </div>
        </div>
        <nav>
            <ul>
                <div class="user-actions">
                    <a onclick="goBack()" class="button">Back</a>
                </div>
            </ul>
        </nav>
    </header>
    <main>
        <div class="content">
            <h1>For You</h1>
            <p>Here are some playlists for you.</p>
            <div class="playlists">
                <div class="playlist">
                    <img src="images/Capy1.jpg" alt="Playlist 1">
                    <h2>Playlist 1</h2>
                    <p>Description of your first project</p>
                </div>
                <div class="playlist">
                    <img src="images/Capy2.jpg" alt="Playlist 2">
                    <h2>Playlist 2</h2>
                    <p>Description of your second work</p>
                </div>
                <div class="playlist">
                    <img src="images/Capy3.jpg" alt="Playlist 3">
                    <h2>Playlist 3</h2>
                    <p>Description of your third creation</p>
                </div>
                <div class="playlist">
                    <img src="images/Capy4.jpg" alt="Playlist 4">
                    <h2>Playlist 4</h2>
                    <p>Description of your fourth endeavor</p>
                </div>
            </div>
        </div>
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
