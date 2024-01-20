<?php

// Connexion BDD

// Préparer la requête 

$sessionimplode = implode("," , $_SESSION['idquestions']);

$preparedRequestQuestion= $connexion->prepare(
    "SELECT * FROM questions WHERE id NOT IN ($sessionimplode) ORDER BY RAND() LIMIT 1"
);
$preparedRequestQuestion->execute();

$question = $preparedRequestQuestion->fetch(PDO::FETCH_ASSOC);
array_push($_SESSION['idquestions'], $question['id']);
?>
<div class="fw-bold text-black  fs-3"><span><?= $question['statement'];?></span></div>
