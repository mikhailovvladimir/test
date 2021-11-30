<?php

include_once __DIR__ . '/../db/connect.php';

$title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_STRING);
$text = filter_input(INPUT_POST, 'text', FILTER_SANITIZE_STRING);
$authorId = $_SESSION['user']['id'];
$category = $_POST['category'] ?? null;
// $category = filter_input(INPUT_POST, 'category', FILTER_SANITIZE_STRING);

if ($title !== null && $text !== null && $authorId !== null && $category !== null) {
    $sql = 'INSERT INTO `articles` (`author_id`, `title`, `text`) VALUES (:author_id, :title, :text);';
    $s = $pdo->prepare($sql);
    $s->bindValue(':title', $title);
    $s->bindValue(':text', $text);
    $s->bindValue(':author_id', $authorId);
    $s->execute();

    $sql = 'SELECT * FROM `articles` WHERE title = :title';
    $s = $pdo->prepare($sql);
    $s->bindValue(':title', $title);
    $s->execute();
    $article = $s->fetchAll();

    if (isset($article) and isset($category)) {
        foreach ($category as $value) {
            $sql = 'INSERT INTO `articles_categories` (`article_id`, `category_id`) VALUES (:article_id, :category_id);';
            $s = $pdo->prepare($sql);
            $s->bindValue(':article_id', $article[0]['id']);
            $s->bindValue(':category_id', $value);
            $result = $s->execute();
        }
    }

    if ($result) {
        $_SESSION['message'] = 'Cтатья добавлена успешно!';
    }

}