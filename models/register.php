<?php
include_once __DIR__ . '/../db/connect.php';

$login = filter_input(INPUT_POST, 'login', FILTER_SANITIZE_STRING);
$name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);

if ($login === null && $name === null && $password === null) {
    $_SESSION['error'] = '';
} else if ($login === '') {
    $_SESSION['error'] = "Заполните поле логина";
} else if ($name === '') {
    $_SESSION['error'] = "Заполните поле имя";
} else if ($password === '') {
    $_SESSION['error'] = "Заполните поле пароля";
} else if ($login === false) {
    $_SESSION['error']  = "Некорректно заполненное поле логина";
} else if ($name === false) {
    $_SESSION['error'] = "Некорректно заполненно имя";
} else if ($password === false) {
    $_SESSION['error'] = "Некорректно заполненное поле пароля";
} else if (mb_strlen($login) < 5 || mb_strlen($login) > 90) {
    $_SESSION['error'] = "Недопустимая длина логина";
} else if (mb_strlen($name) < 3 || mb_strlen($name) > 50) {
    $_SESSION['error'] = "Недопустимая длина имени";
} else if (mb_strlen($password) < 3 || mb_strlen($password) > 25) {
    $_SESSION['error'] = "Недопустимая длина пароля";
}

$password = password_hash($password, PASSWORD_DEFAULT);
if ($login !== null && $name !== null && $password !== null) {
    $sql = 'INSERT INTO `users` (`login`, `name`, `password`) VALUES (:login, :name, :password);';
    $s = $pdo->prepare($sql);
    $s->bindValue(':login', $login);
    $s->bindValue(':name', $name);
    $s->bindValue(':password', $password);
    $result = $s->execute();

    if ($result) {
        $_SESSION['register'] = 'Регистрация прошла успешно!';
    }
}