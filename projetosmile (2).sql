-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2023 às 17:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetosmile`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `idPergunta` int(11) NOT NULL,
  `dscEnuncPergunta` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pergunta`
--

INSERT INTO `pergunta` (`idPergunta`, `dscEnuncPergunta`) VALUES
(1, 'Que bacana!Também estou em fase de crescimento ainda e então estou tentando me alimentar direito. Você também esta? Quantas refeições você tem feito durante todo seu dia contando com os lanchinhos, almoço e janta?'),
(2, 'Eu acho que são poucas refeições...Eu ficaria com fome rsrs. Por qual motivo você tem menos que 3 refeições durante todo seu dia?'),
(3, 'Eu normalmente como 5 refeições, mas tem dias que estou com uma fome a mais rsrs.Por qual motivo você tem mais que 7 refeições durante todo o seu dia?'),
(4, 'Certo, bacana mesmo é quando um colega divide um lanche que gosta com você não é mesmo? Como você diria que é o seu convívio com os outros alunos da escola?'),
(5, 'Nossa, é realmente bem chato isso... O que aconteceu?'),
(6, 'Acontece as vezes que temos nossas opniões e nem sempre concordamos com alguns colegas pois temos pensamentos diferentes,e as vezes as discussões ficam bem ruins. Nesse caso, quando você ofende alguém o que faz quando você nota que ofendeu essa pessoa?'),
(7, 'Essa situação é realmente complicada não é mesmo!? E quando a pessoa te ofende em público,como você reage?'),
(8, 'Muitas dessas ofensas fazem as pessoas ficarem profundamente tristes principalmente quando há preconceito com a aparência dela.<br>E falando de aparência... Eu estou gostando muito de te conhecer e na minha opnião você é uma pessoa com uma beleza muito especial! Mas me fale um pouco, como você se sente sobre o seu corpo?'),
(9, 'Julgar as pessoas pela a aparência é algo bem errado de se fazer na sala de aula. E quando estamos em casa quem diz o que é certo ou errado são nossos pais ou responsáveis não é mesmo!?Como seus pais ou responsáveis agem na maioria das vezes quando você faz algo de errado?'),
(10, 'Quantas vezes te batem durante uma semana?'),
(11, 'Eu ficava zangado quando ficava de castigo mas depois eu percebia que eu realmente não deveria ter feito aquilo e a raiva passava. De todas as coisas na sua vida, o que te deixaria com muita raiva e o que você faria?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resposta`
--

CREATE TABLE `resposta` (
  `idResposta` int(11) NOT NULL,
  `dscEnuncResposta` varchar(1000) DEFAULT NULL,
  `idPergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `resposta`
--

INSERT INTO `resposta` (`idResposta`, `dscEnuncResposta`, `idPergunta`) VALUES
(1, 'De 3 a 6 refeições', 1),
(2, 'Menos que 3 refeições', 1),
(3, 'Mais de 7 refeições', 1),
(4, 'Meus responsáveis não tem muito dinheiro para comprar comida', 2),
(5, 'Não estou me sentindo bem ou não sinto fome', 2),
(6, 'Estou fazendo dieta por conta própria', 2),
(7, 'Como sempre que estou ansioso, com raiva ou triste', 3),
(8, 'Sinto muita fome', 3),
(9, 'Só como muito quando tem besteiras(batata frita, pizza, refrigerante),quando é comida saudável eu não gosto e normalmente como pouco', 3),
(10, 'Bom', 4),
(11, 'Mais ou Menos', 4),
(12, 'Ruim', 4),
(13, 'Eles/Elas não gostam de mim e implicam comigo', 5),
(14, 'Não gosto de muita amizade, prefiro ficar sozinho!', 5),
(15, 'Eu peço desculpas,pois vi que aquilo não foi certo', 6),
(16, 'Ele/Ela mereceu! Então eu não ligo se ess pessoa vai ficar triste', 6),
(17, 'Finjo que nada aconteceu e tento agir naturalmente', 6),
(18, 'Fico com vergonha e quero sumir daquele lugar o mais rápido possível', 7),
(19, 'Eu procuro um professor ou responsável para que possamos conversar e resolver isso da melhor maneira(sem briga)', 7),
(20, 'Eu me vingo daquela pessoa de maneira pior para ela aprender a não mexer comigo!', 7),
(21, 'Eu gosto de como eu sou e não mudaria nada pois cada um tem uma beleza diferente e individual', 8),
(22, 'Tenho vergonha do meu corpo ou minha aparência', 8),
(23, 'Me considero a pessoa mais bonita da sala e a maioria dos outros alunos são feios!', 8),
(24, 'Não fazem nada', 9),
(25, 'Conversam comigo e/ou me deixam de castigo', 9),
(26, 'Me batem', 9),
(27, 'Só quando faço algo muito errado', 10),
(28, 'Quase todos os dias', 10),
(29, 'Quando ele/ela responsável por mim bebe muito', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(45) DEFAULT NULL,
  `idadeUser` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`idUser`, `nomUser`, `idadeUser`) VALUES
(1, 'Jessica', '13'),
(2, 'Joao', '8'),
(3, 'Pedro', '17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `useradm`
--

CREATE TABLE `useradm` (
  `idUserAdm` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `userresposta`
--

CREATE TABLE `userresposta` (
  `idUserResposta` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idResposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`idPergunta`);

--
-- Índices de tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`idResposta`),
  ADD KEY `fk_resposta_pergunta1_idx` (`idPergunta`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Índices de tabela `useradm`
--
ALTER TABLE `useradm`
  ADD PRIMARY KEY (`idUserAdm`);

--
-- Índices de tabela `userresposta`
--
ALTER TABLE `userresposta`
  ADD PRIMARY KEY (`idUserResposta`),
  ADD KEY `fk_userresposta_user_idx` (`idUser`),
  ADD KEY `fk_userresposta_resposta1_idx` (`idResposta`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `idPergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `idResposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `useradm`
--
ALTER TABLE `useradm`
  MODIFY `idUserAdm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userresposta`
--
ALTER TABLE `userresposta`
  MODIFY `idUserResposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `fk_resposta_pergunta1` FOREIGN KEY (`idPergunta`) REFERENCES `pergunta` (`idPergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `userresposta`
--
ALTER TABLE `userresposta`
  ADD CONSTRAINT `fk_userresposta_resposta1` FOREIGN KEY (`idResposta`) REFERENCES `resposta` (`idResposta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userresposta_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
