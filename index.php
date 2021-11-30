<?php
session_start();
include_once __DIR__ . '/helpers/render.php';

//роутинг
$route = filter_input(INPUT_GET, 'route', FILTER_SANITIZE_URL);

if ($route === null) {
    if (isset($_SESSION['user'])) {
        header('Location: /?route=articles');
    }
    
    render('auth/index');
    exit();
}

if ($_GET['route'] === 'auth') {
    include_once __DIR__ . '/models/auth.php';
    render('auth/index');

    if (isset($_SESSION['user'])) {
        header('Location: /?route=articles');
    }
    exit();
}

if ($_GET['route'] === 'register') {
    if (isset($_SESSION['user'])) {
        header('Location: /?route=articles');
    }

    include_once __DIR__ . '/models/register.php';
    render('register/index');
    unset($_SESSION['register']);
    exit();
}


if ($_GET['route'] === 'logout') {
    unset($_SESSION['user']);
    header('Location: /?route=auth');
    exit();
}

if ($_GET['route'] === 'articles') {
    if (!isset($_SESSION['user'])) {
        header('Location: /?route=auth');
    }

    include_once __DIR__ . '/models/getAuthorsAndCategory.php';
    render('articles/index', ['data' => $allCategoryAndArticles]);
    exit();
}


if ($_GET['route'] === 'article' and isset($_GET['create'])) {
    if (!isset($_SESSION['user'])) {
        header('Location: /?route=auth');
    }

    include_once __DIR__ . '/models/createArticle.php';
    render('articles/article');
    unset($_SESSION['message']);
    exit();
}

echo 'Ошибка 404';
http_response_code(404);