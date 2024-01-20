<?php
session_start();
include './config/debug.php';
require_once './config/connexion.php';
include './partials/header.php';

?>

<section>

    <div class="player d-flex justify-content-center m-5 text-white">

        <img class="socrates" src="./images//pngegg.png" width="150px" alt="" srcset="">
        <h3 class="animate-charcter fs-1 user-style mt-5"><?= $_SESSION['username'] ?></h3>
    </div>


</section>




<section>

    <div class="question d-flex justify-content-center m-5 text-white">

        <?php
        include './process/addquestion.php'
        ?>


    </div>

    <div class="choices row d-flex justify-content-center text-center m-5 text-white">


        <div class="choice d-flex justify-content-center">

            <!-- <h4>Choice 1</h4> -->


            <?php
            include './process/addchoices.php'
            ?>

        </div>




</section>



<section>
    <div>
        <div class="wrapper d-flex justify-content-center mb-5 text-white">
             <a href="./page-quiz.php"><img class="fleche-next" src="./images//580b57fcd9996e24bc43c44c.png" width="100px" alt="" srcset=""></a>

        </div>

        <div class="podium justify-content-end p-5 mt-5">
            <div class="left"></div>   
            <div class="top"></div>
            <div class="right"></div>
        </div>

</section>