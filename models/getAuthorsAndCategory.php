<?php
    include_once __DIR__ . '/../db/connect.php';

    $sql = 'SELECT categories.name, articles.text, articles.title FROM categories 
    INNER JOIN articles INNER JOIN articles_categories 
    ON articles_categories.article_id = articles.id;';
    $s = $pdo->query($sql);
    $s->execute();
    $allCategoryAndArticles = $s->fetchAll();