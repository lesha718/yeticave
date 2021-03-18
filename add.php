<?php
require_once('functions.php');
require 'data.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $required_fields = ['lot_name', 'category', 'message', 'lot_rate', 'lot_step', 'lot_date'];
    $errors = [];
    foreach ($required_fields as $field){
        if(empty($_POST[$field])){
            $errors[$field] = 'Заполните поле';
        }
        if($field == 'lot_rate'){
            if(!filter_var($_POST[$field], FILTER_VALIDATE_INT)){
                $errors[$field] = 'начальная цена должна быть корректной';
            }
        }
    }
}

?>
