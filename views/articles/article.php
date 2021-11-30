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
            <form action="?route=article&create" method="post">
                    <?= $_SESSION['message']  ?? '' ?>
                    <h1>Статья один ко многим и многие к многим</h1>
                    <input type="text" class="form-control"
                     name="title" placeholder="заголовок"title"><br>
                     <textarea name="text" class="form-control" placeholder="текст"></textarea><br>
                     <select multiple name="category[]" class="form-control">
                        <option value="1">Категория 1</option>
                        <option value="2">Категория 2</option>
                        <option value="3">Категория 3</option>
                    </select><br>
                    <button type="submit" class="btn btn-success">Отправить</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>