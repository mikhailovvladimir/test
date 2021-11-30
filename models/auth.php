<?php
include_once __DIR__ . '/../db/connect.php';

$login = filter_input(INPUT_POST, 'login', FILTER_SANITIZE_STRING);
$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);

if ($login === null && $password === null) {
    $_SESSION['error'] = '';
} else if ($login === '') {
    $_SESSION['error'] = "Заполните поле логина";
} else if ($password === '') {
    $_SESSION['error'] = "Заполните поле пароля";
} else if ($login === false) {
    $_SESSION['error'] = "Некорректно заполненное поле логина";
} else if ($password === false) {
    $_SESSION['error'] = "Некорректно заполненное поле пароля";
} else if (mb_strlen($login) < 5 || mb_strlen($login) > 90) {
    $_SESSION['error'] = "Недопустимая длина логина";
} else if (mb_strlen($password) < 2 || mb_strlen($password) > 25) {
    $_SESSION['error'] ="Недопустимая длина пароля";
}

if ($login !== null && $password !== null) {
    unset($_SESSION['error']);

    $sql = 'SELECT * FROM `users` WHERE `login` = :login';
    $s = $pdo->prepare($sql);
    $s->bindValue(':login', $login);
    $s->execute();
    $result = $s->fetchAll();
    
    if (empty($result)) {
        $_SESSION['error'] = "Пользователь не найден";
    }

    if (!password_verify($password, $result[0]['password']) && !empty($result)) {
        $_SESSION['error'] = "Неверный пароль";
    }

    if (empty($_SESSION['error'])) {
        $_SESSION['user'] = [
            'id' => $result[0]['id'],
            'login' => $result[0]['login'],
            'authHash' => $result[0]['password']
        ];
    }

}