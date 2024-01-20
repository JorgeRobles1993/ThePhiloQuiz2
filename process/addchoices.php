
<?php
// Préparer la requête 
$preparedRequestAnswer= $connexion->prepare(

    "SELECT * FROM choices WHERE id_questions = " .$question['id'] . " ORDER by RAND()");

    $preparedRequestAnswer->execute();

$answers = $preparedRequestAnswer->fetchAll(PDO::FETCH_ASSOC);

// Afficher le contenu de chaque réponse
?>

<form action="../process/trueorfalse.php" method="post">

<?php
foreach ($answers as $answer) { ?>
  

  <button class="choices m-5 rounded" type="submit" name="questionanswer" value="<?= $answer['good_ans']?>">
    <span>
      <?= $answer['statement'] ?>
      <br>
    </span>
  </button>
<?php
}
?>
  <input type="hidden" name="id_questions" value="<?= $answer['id_questions']?>">

  </form>
