<?php
session_start();

require "../config/connexion.php";

if(isset($_POST['questionanswer'])){
    //var_dump($_POST['questionanswer'] > 0);
    if($_POST['questionanswer'] > 0) {
        $_SESSION['score'] = $_POST['questionanswer'] + $_SESSION['score'];
    }
    else{
        $_SESSION['score'] = $_POST['questionanswer'] + $_SESSION['score'];
    }

    

    if(isset($_SESSION['nbrquestion']) && $_SESSION['nbrquestion'] <= 9){
        $_SESSION['nbrquestion']++;
        header('Location: ../page-quiz.php'); exit();
    }
    else{
        $insertscore = $connexion->prepare("INSERT INTO Scores (score, id_user, username) VALUES (?,?,?)");
        $insertscore->execute([
        
            $_SESSION['score'],
            $_SESSION['id_user'],
            $_SESSION['username']
        ]);
        header('location: ../scores.php'); exit();
    }
}