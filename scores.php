<?php
session_start();
include './config/debug.php';
require_once './config/connexion.php';
include './partials/header.php';

$preparedRequestscores= $connexion->prepare(
    "SELECT * FROM Scores ORDER by score DESC LIMIT 3");
$preparedRequestscores->execute();

$highscores = $preparedRequestscores->fetchAll(PDO::FETCH_ASSOC);

?>

<section>

    <div class="player d-flex justify-content-center m-5 text-white">

        <img class="socrates" src="./images//sourire.png" width="150px" alt="" srcset="">
        <h3 class="fs-1 user-style mt-5"><?= $_SESSION['username'] . ", tu as fait: " . $_SESSION['score'] . " points" ?></h3>
    </div>


</section>



</div>

<?php 
        foreach ($highscores as $highscores1) { ?>
        <div class="container d-flex justify-content-center">
            <div class="highscores">
                <h3 class="text-warning fs-1 mt-2"><?= $highscores1["username"] . 
                " a fait: " . $highscores1["score"]  . " points " ?>
            
            </div>
        </div>
        <?php
}
?>


<div class="wrapper d-flex justify-content-center mb-5 text-white">
<a href="./index.php"><img class="fleche-next" src="./images//PlayAgainButton.png" width="" alt="" srcset=""></a>


