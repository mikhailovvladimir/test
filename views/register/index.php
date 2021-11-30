<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Форма регистрации</title>
</head>
<body>
<div class="container mt-4">
        <div class="row">
            <div class="col">
                <form action="/?route=register" method="post">
                    <?= $_SESSION['error'] ?? '' ?>
                    <?= $_SESSION['register'] ?? '' ?>
                    <h1>Форма регистрации</h1>
                    <input type="text" class="form-control"
                     name="login" placeholder="Введите логин" id="login"><br>
                     <input type="text" class="form-control"
                     name="name" placeholder="Введите имя" id="name"><br>
                     <input type="password" class="form-control"
                     name="password" placeholder="Введите пароль" id="password"><br>
                    <button type="submit" class="btn btn-success">Зарегестрироваться</button>
                </form>
                <a href="/?route=auth">Авторизоваться</a>
            </div>
        </div>
    </div>
</body>
</html>