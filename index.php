<?php
session_start();
include './config/debug.php';
require_once './config/connexion.php';
include './partials/header.php';

?>


<div class="d-flex justify-content-center m-5"><img src="./images//filosofiaquiz.png" alt="" srcset=""></div>

    <div class="d-flex justify-content-center m-5">

        <form action="./process/adduser.php" method="get">

            <h3 class="fs-3 d-flex justify-content-center text-white m-2">ENTER USERNAME <br> TO START PLAYING</h3>

                <input class="rounded form-control form-control-lg mt-3 p-2" name="username" type="text" placeholder="Username">

        </form>

    </div>


<div class="d-flex justify-content-center m-5 icon-link-hover">

    <a href="./page-quiz.php"><img class="socrates" src="./images//pngegg.png" width="150px" alt="" srcset=""></a>

</div>