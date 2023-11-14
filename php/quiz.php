<?php
session_start();
require("dbconnect.php");
$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

if (!empty($_POST['btn-submit'])) {

	header("Location: paginafinal.php");	
	}
if (isset($_POST['btn-reset'])) {
    session_unset();
    session_destroy();

    header("Location: index.php");
    exit;
}
?>

<!DOCTYPE html>
<HTML lang="pt-br">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width initial-scale=0.5">
	<link rel="stylesheet" type="text/css" href="../css/quiz.css">
</head>

<body>
	<title>
		Quiz Smile
	</title>
	<form action="quiz.php" method="POST" style="padding-bottom: 1px;">
		<div class="quiz"> <!-- Div onde ficará as perguntas -->
			<h1>"Vamos começar!"<span style='font-size:100px;'>&#128512;</span></h1>
		</div>
		<div id="divpergunta1" style="display: block"> <!-- Cada pergunta tera uma div e cada div tera botoes programados. -->
			<?php
			$sqlPergunta = "SELECT * FROM pergunta";
			$resultadoPergunta = $connect->prepare($sqlPergunta);
			$resultadoPergunta->execute();

			if ($resultadoPergunta and $resultadoPergunta->rowCount() > 0) {
				while ($rowPergunta = $resultadoPergunta->fetch(PDO::FETCH_ASSOC)) {
					extract($rowPergunta);
					echo "<div class='quiz'>";
					echo "<h2> $idPergunta)  $dscEnuncPergunta </h2>";
					$sqlResposta = "SELECT * FROM resposta WHERE idPergunta = $idPergunta";
					$resultadoResposta = $connect->prepare($sqlResposta);
					$resultadoResposta->execute();

					if ($resultadoResposta) {
						while ($rowResposta = $resultadoResposta->fetch(PDO::FETCH_ASSOC)) {
							extract($rowResposta);
							echo "<input class='hidden-radio' type='radio' name='idResposta_$idPergunta' id='resposta_$idResposta' value='$idResposta'>";
							echo "<label class='resposta' for='resposta_$idResposta'> $dscEnuncResposta</label>";
						}
					} else {
						echo "Nenhuma resposta encontrada.";
					}

					echo "</div>";
				}
			} else {
				echo "Nenhuma pergunta encontrada.";
			}

			?>
		</div>



		<div class="btnInfer">
			<button onclick="location.href='index.php'"name="btn-reset">Sair</button><!--botao resetar-->
			<input id="btnConfirm2" type="submit" name="btn-submit" value="Finalizar"><!--botao resetar-->
		</div>
	</form>
</body>

</HTML>