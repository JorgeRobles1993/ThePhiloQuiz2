<?php 
session_start();
date_default_timezone_set('Europe/Paris');
require_once '../config/connexion.php';


// if(!empty($_GET['username'])){

    if(!empty($_GET['username'])){

$preparerequest = $connexion->prepare("SELECT * FROM Users WHERE username = " . "'" . $_GET['username'] . "'");

$preparerequest->execute();

$user = $preparerequest->fetch();


if(!empty($user['username'])){

    $_SESSION['username'] = $user['username'];

    header('location: ../page-quiz.php');

}else{
    
    $preparedRequest = $connexion->prepare(
        "INSERT INTO Users (username) VALUES (?)"
    );

    $preparedRequest->execute([
        $_GET['username']
    ]);

    $_SESSION['username'] = $_GET['username'];
}
    
header('location: ../page-quiz.php');

    }