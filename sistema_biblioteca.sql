-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2021 às 03:29
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitor`
--

CREATE TABLE `leitor` (
  `idLeitor` int(11) NOT NULL,
  `cpfLeitor` varchar(25) NOT NULL,
  `nomeLeitor` varchar(100) NOT NULL,
  `ruaLeitor` varchar(100) NOT NULL,
  `numeroLeitor` int(11) NOT NULL,
  `complementoLeitor` varchar(100) NOT NULL,
  `bairroLeitor` varchar(50) NOT NULL,
  `cidadeLeitor` varchar(50) NOT NULL,
  `estadoLeitor` varchar(2) NOT NULL,
  `cepLeitor` varchar(25) NOT NULL,
  `telefoneLeitor` varchar(25) NOT NULL,
  `whatsappLeitor` varchar(25) NOT NULL,
  `emailLeitor` varchar(100) NOT NULL,
  `formaEnvio` varchar(100) NOT NULL,
  `fotoLeitor` longblob DEFAULT NULL,
  `ativoLeitor` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `leitor`
--

INSERT INTO `leitor` (`idLeitor`, `cpfLeitor`, `nomeLeitor`, `ruaLeitor`, `numeroLeitor`, `complementoLeitor`, `bairroLeitor`, `cidadeLeitor`, `estadoLeitor`, `cepLeitor`, `telefoneLeitor`, `whatsappLeitor`, `emailLeitor`, `formaEnvio`, `fotoLeitor`, `ativoLeitor`) VALUES
(1, '123.456.789-99', 'Claudemir Alves', 'Rua do Centro', 25, '', 'Centro', 'Gaspar', 'SC', '89110-000', '(47) 9 9999-9998', '(47) 9 9999-9998', 'claudemir.email@gmail.com', 'Telefone', '', 1),
(2, '123.455.788-98', 'Carolina Alves', 'Rua de Baixo', 2, 'Apto 01', 'Centro', 'Gaspar', 'SC', '89110-001', '(47) 9 9999-9897', '(47) 9 9999-9897', 'carolalves@hotmail.com', 'Whatsapp', NULL, 1),
(3, '124.455.789-98', 'Maria Santos', 'Rua da Ladeira', 10, '', 'Centro', 'Gaspar', 'SC', '89110-011', '(47) 9 9595-9595', '(47) 9 9595-9595', 'maria@gmail.com', 'Telefone', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `idLivro` int(11) NOT NULL,
  `tituloLivro` varchar(100) NOT NULL,
  `valorLivro` varchar(5) NOT NULL,
  `anoLivro` int(4) NOT NULL,
  `quantidadeLivro` int(3) NOT NULL,
  `autorLivro` varchar(100) NOT NULL,
  `generoLivro` varchar(50) NOT NULL,
  `descricaoLivro` text NOT NULL,
  `ativoLivro` int(1) NOT NULL DEFAULT 1,
  `fotoLivro` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`idLivro`, `tituloLivro`, `valorLivro`, `anoLivro`, `quantidadeLivro`, `autorLivro`, `generoLivro`, `descricaoLivro`, `ativoLivro`, `fotoLivro`) VALUES
(1, 'A Torre Negra VI: Canção de Susannah', '39,90', 2007, 5, 'Stephen King', 'Aventura', '6º Livro da série A Torre Negra, que continua a acompanhar a saga de Roland e seu ka-tet em busca da Torre Negra.', 1, ''),
(3, 'O Senhor dos Anéis: As Duas Torres', '49,90', 2000, 10, 'J. R. R. Tolkien', 'Aventura/Fantasia', '2º Livro da Trilogia do Senhor dos Anéis, que continua acompanhando Frodo e os outros para destruir o Um Anel.', 1, ''),
(4, 'As Brumas de Avalon', '59,90', 2017, 5, 'Marion Zimmer Bradley', 'Aventura/Fantasia', 'Grande clássico da literatura mundial que retrata a mítica história do Rei Artur à partir da perspectiva de mulheres mágicas e poderosas.', 1, ''),
(5, 'Fahrenheit 451', '49,90', 2012, 5, 'Ray Bradbury', 'Ficção', 'Ficção científica que acompanha a vida de um bombeiro num mundo distópico onde os livros eram proibidos.', 1, ''),
(6, 'O Corvo', '29,90', 2019, 3, 'Edgar Allan Poe', 'Terror', 'Poema que conta a história de uma visita misteriosa de um corvo falante a um homem que está sofrendo a perda de sua amada.', 1, ''),
(7, 'Anne de Greengabbles', '39,90', 2019, 5, 'L. M. Montgomery', 'Romance', '1º Livro da série Anne de Greengabbles, que começa a contar a história de Anne, uma menina de 11 anos e extremamente criativa, que foi adotada por engano. ', 1, ''),
(8, 'Conjurador - Livro Um: O Aprendiz', '39,90', 2015, 7, 'Taran Matharu', 'Aventura/Fantasia', 'Livro 1 da trilogia O Conjurador, essa obra baseada nos universos de Tolkien e Skyrim, conta a história de Fletcher, um menino de 15 anos, em um mundo fantástico.', 1, ''),
(9, 'A Companhia Negra: Livro 1', '39,90', 2012, 3, 'Glen Cook', 'Aventura/Fantasia', 'Livro 1 da Trilogia da Série da Companhia Negra, esse livro nos leva a um mundo sombrio e dominado por feiticeiros perversos, enquanto acompanha um grupo de mercenários em decadência envolvendo-se em uma trama perigosa de busca pelo poder.', 1, ''),
(10, 'As Crônicas de Gelo e Fogo - Livro Três: A Tormenta de Espadas', '59,90', 2015, 10, 'G. R. R. Martin', 'Aventura/Fantasia', 'Terceiro livro das Crônicas de Gelo e Fogo, que continua acompanhando o desenrolar da Guerra dos Cinco Reis, das intrigas palacianas de Porto Real e o desenvolvimento de Daenerys.  ', 1, ''),
(11, 'Drácula', '49,90', 2020, 5, 'Bram Stoker', 'Terror', 'Clássico do Terror que nos traz os relatos dos ataques de Drácula em Londres e na Transilvânia.', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livroemprestado`
--

CREATE TABLE `livroemprestado` (
  `tituloLivro` varchar(100) NOT NULL,
  `valorLivro` varchar(5) NOT NULL,
  `anoLivro` int(4) NOT NULL,
  `autorLivro` varchar(100) NOT NULL,
  `idLivro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `leitor`
--
ALTER TABLE `leitor`
  ADD PRIMARY KEY (`idLeitor`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `leitor`
--
ALTER TABLE `leitor`
  MODIFY `idLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
