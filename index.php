<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Библиотека - главная</title>
    <link rel="stylesheet" href="styles\index.css">
</head>
<body>
<?php
    $mysql = new mysqli("MySQL-8.0", "root", "", "Library");
    $mysql->query("SET NAMES 'utf8'");

    if($mysql->connect_error) {
        echo 'Error Number: '.$mysql->connect_errno.'<br>';
        echo 'Error:'.$mysql->connect_error;
        }

    $result = $mysql->query( "SELECT * FROM `books`");

    $mysql->close();
?>

    <header>
        <h1>Library.ru</h1>
            <div id="navig">
                <a href="">Аудиокниги</a>
                <a href="">Подкасты</a>
                <a href="">Обсуждения</a>
            </div>
    </header>


    <div class="content">
        <h2>Каталог</h2>
        <hr id="katline">
            <?php if($result->num_rows > 0): ?>
                <div class="katalog">
                    <?php while($book = $result->fetch_assoc()): ?>
                        <div class="book-card">
                            <img src="<?php echo $book['img']; ?>" class="bookimg"> 
                            <h4 class="Bookzag"><?php echo $book['book'];?> - <?php echo $book['Author'] ?> - <?php echo $book['Date'];?></h4>
                            <p class="inf"><?php echo $book['info'] ?></p>
                        </div>
                    <?php endwhile;?>
                <?php else: ?>
                    <p>Книги не найдены</p>
                <?php endif; ?>
        </div>
    </div>

    <foter>
        <h3>Подвал</h3>
    </foter>
</body>
</html>