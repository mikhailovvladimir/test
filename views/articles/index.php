<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Статьи</title>
</head>
<body>
<div class="container mt-4">
        <div class="row">
            <div class="col">
            <?php if (isset($data)) : ?>
                <?php foreach ($data as $article) : ?>
                    <?php $category = $article['name']; ?>
                    <h3><?= $article['title'] ?> </h1>
                    <p1><?= $article['text'] ?> </p1><br>
                    <strong><?= $category ?> </strong><br>
                <?php endforeach ?>
            <?php endif; ?>
            <a href="/?route=logout">Выйти</a>
            </div>
        </div>
    </div>
</body>
</html>