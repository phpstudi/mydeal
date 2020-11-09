<?php
// показывать или нет выполненные задачи
$show_complete_tasks = rand(0, 1);
$project = array('Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто');
$tasks = array(
    array(
        'Задача' => 'Собеседование в IT компании',
        'Дата выполнения' => '01.12.2019',
        'Категория' => 'Работа',
        'Выполнение' => ''
    ),
    array(
        'Задача' => 'Выполнить тестовое задание',
        'Дата выполнения' => '25.12.2019',
        'Категория' => 'Работа',
        'Выполнение' => ''
    ),
    array(
        'Задача' => 'Сделать задание первого раздела',
        'Дата выполнения' => '21.12.2019',
        'Категория' => 'Учеба',
        'Выполнение' => 1
    ),
    array(
        'Задача' => 'Встреча с другом',
        'Дата выполнения' => '22.12.2019',
        'Категория' => 'Входящие',
        'Выполнение' => ''
    ),
    array(
        'Задача' => 'Купить корм для кота',
        'Дата выполнения' => '',
        'Категория' => 'Домашние дела',
        'Выполнение' => ''
    ),
    array(
        'Задача' => 'Заказать пиццу',
        'Дата выполнения' => '',
        'Категория' => 'Домашние дела',
        'Выполнение' => ''
    )
);
function tasksCount($tasks, &$value){ 
    $tasksCount = 0;
    foreach ($tasks as $key => $task) {
        if ($task['Категория'] == $value) {
            $tasksCount++;
        }
    }
    return $tasksCount;
    echo $tasksCount;
}
include_once('helpers.php');
$title='Дела в порядке';
$content = include_template("main.php", array('show_complete_tasks'=>$show_complete_tasks, 'project'=> $project, 'tasks'=> $tasks));
$layout = include_template("layout.php",array('content'=>$content, 'user_name'=> $user_name, 'title'=> $title));
print $layout;
date_default_timezone_set('Europe/Moscow');
?>
