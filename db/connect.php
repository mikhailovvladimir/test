<?php
try
{
  $pdo = new PDO('mysql:host=localhost;dbname=register_db', 'root', '194xbmMMM');
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e)
{
    exit('Неожиданная ошибка на сервере');
}
