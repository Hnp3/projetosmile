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

    <form action="cadastro.php" method="POST">
        <div class="quiz2"> <!-- Div onde ficará as perguntas -->
            <h1>"Ola! Sou o smile!"<span style='font-size:100px;'>&#128512;</span></h1>
            <h2> Então vamos conversar! Para que eu possa te conhecer um pouquinho melhor, me diga seu nome e idade?</h2>
            <div style="display: flex; justify-content: space-between;">
                <input class="dadosAluno" type="text" id="nomeAluno" name="nomeAluno" placeholder="Digite seu nome">
                <input class="dadosAluno" type="number" id="idadeAluno" name="idadeAluno" placeholder="Digite a sua idade">
            </div>
            <?php
            require("dbconnect.php");
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

            if (!empty($_POST['btn-submit'])) {
                $nomeAluno = filter_input(INPUT_POST, 'nomeAluno', FILTER_SANITIZE_SPECIAL_CHARS);
                $idadeAluno = filter_input(INPUT_POST, 'idadeAluno', FILTER_SANITIZE_NUMBER_INT);

                if (empty($nomeAluno) || empty($idadeAluno)) {
                    echo "Por favor, preencha todos os campos.";
                } else {
                    $sqlInsert = "INSERT INTO user(nomUser, idadeUser) VALUES ('$nomeAluno', '$idadeAluno')";
                    $resultadoInsert = $connect->prepare($sqlInsert);
                    $resultadoInsert->execute();

                    if ($resultadoInsert) {
                        // Obtenha a id do usuário após o cadastro
                        $sqlUser = "SELECT idUser FROM user WHERE nomUser='$nomeAluno'";
                        $resultadoIdUser = $connect->prepare($sqlUser);
                        $resultadoIdUser->execute();

                        // Obtenha a id do usuário
                        $row = $resultadoIdUser->fetch(PDO::FETCH_ASSOC);
                        $idUser = $row['idUser'];

                        // Redirecionamento com header
                        header("Location: quiz.php?idUser=$idUser");
                        exit;
                    } else {
                        echo "Erro ao cadastrar dados";
                    }
                }
            }
            ?>

            <input class="botao" type="submit" name="btn-submit" value="Confirmar" style="float:right">
        </div>
    </form>
</body>