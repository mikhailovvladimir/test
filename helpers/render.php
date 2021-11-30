<?php

function render(string $path, array $params = []): void
{
    extract($params);
    include_once __DIR__ . '/../views/' . $path . '.php';
}