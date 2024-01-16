<?php
session_start();
require_once './config/connexion.php';
include './partials/header.php';


?>

<section>

    <div class="player d-flex justify-content-center m-5 text-white">

        <img class="socrates" src="./images//pngegg.png" width="150px" alt="" srcset="">
        <h3 class="fire user-style mt-5"><?= $_SESSION['username'] ?></h3>
    </div>


</section>




<section>

    <div class="question d-flex justify-content-center m-5 text-white">

        <h2> QUESTION HERE </h2>

    </div>

    <div class="choices row d-flex justify-content-center text-center m-5 text-white">


        <div class="choice col-4 m-5">

            <h4>Choice 1</h4>

        </div>

        <div class="choice col-4 m-5">

            <h4>Choice 2</h4>

        </div>

        <div class="row justify-content-center text-center">
        </div>

        <div class="choice col-4 m-5">

            <h4>Choice 3</h4>

        </div>

        <div class="choice col-4 m-5">

            <h4>Choice 4</h4>

        </div>

    </div>


</section>



<section>

    <div class="wrapper d-flex justify-content-center mb-5 text-white">
  <a href="">Next Question <i class=" fa-solid fa-arrow-right"></i></a>
    </div>


    <div class="scoreboard d-flex justify-content-end text-white">

    <div class="podium mb-5">
        <div class="top"></div>
        <div class="left"></div>
        <div class="right"></div>
    </div>






</section>