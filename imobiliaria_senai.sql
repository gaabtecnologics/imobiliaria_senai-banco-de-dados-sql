-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/11/2026 às 12:13
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria_senai`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `tipo_imovel` varchar(50) DEFAULT NULL,
  `tipo_negocio` varchar(50) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `id_proprietario` int DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `bairro`, `cidade`, `estado`, `tipo_imovel`, `tipo_negocio`, `valor`, `id_proprietario`) VALUES
(1, 'Rua Santa Catarina, 3671', 'Jardim dos Príncipes', 'Umuarama', 'PR', 'Sobrado', 'Venda', 190000, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `negocios`
--

CREATE TABLE `negocios` (
  `id` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  `contrato` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `fone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `cpf`, `email`, `senha`, `endereco`, `fone`) VALUES
(1, 'Gabriel Aurudo da Silva', '654.321.679-67', 'g.silva67@escola.pr.gov.br', 'r1alem0m3ntsz', 'Rua Nicanor José Aurélio, 2523, Jardim dos Pássaros, Umuarama, PR', '+55 (44) 95762-8922'),
(2, 'Lucas Ferreira', '678.622.356-44', 'lu.al@escola.pr.gov.br', 'umuarama2026', 'Av. Paraná, 4200 - Zona I, Umuarama - PR', '+55 (44) 99911-2233'),
(3, 'Mariana Almeida', '069.276.728-26', 'mari.meida@escola.pr.gov.br', 'senha@123', 'Av. Maringá, 4850 - Zona III, Umuarama - PR', '+55 (44) 99822-3344'),
(4, 'Gabriel Costa', '302.029.732-04', 'gabriel.costa@escola.pr.gov.br', 'estudo456', 'Av. Brasil, 3500 - Zona I, Umuarama - PR', '+55 (44) 99733-4455'),
(5, 'Beatriz Santos', '762.468.692-97', 'bea.s@escola.pr.gov.br', 'aluno789', 'Rua Jussara, 3410 - Zona II, Umuarama - PR', '+55 (44) 99644-5566'),
(6, 'Rafael Oliveira', '813.478.715-00', 'rafaoli@escola.pr.gov.br', 'pr2026@escola', 'Av. Presidente Castelo Branco, 3800 - Zona I, Umuarama - PR', '+55 (44) 99555-6677'),
(7, 'Camila Sá Rodrigues', '005.367.940-73', 'cammy_sa@escola.pr.gov.br', 'camila#321', 'Rua Cambé, 4120 - Zona II, Umuarama - PR', '+55 (44) 99466-7788'),
(8, 'Matheus Pereira', '740.134.045-32', 'ma.pereira@escola.pr.gov.br', 'matheus99', 'Av. Tiradentes, 2900 - Zona IV, Umuarama - PR', '+55 (44) 99377-8899'),
(9, 'Juliana Lima', '244.205.563-58', 'july.lima@escola.pr.gov.br', 'juliana@2026', 'Rua Ministro Oliveira Salazar, 4500 - Zona I, Umuarama - PR', '+55 (44) 99288-9900'),
(10, 'Thiago Souza', '976.107.557-53', 'thi.souza@escola.pr.gov.br', 'thiago1010', 'Av. Ariovaldo Rodrigues de Moraes, 1500 - Parque Industrial, Umuarama - PR', '+55 (44) 99199-0011');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relacao_pessoa`
--

CREATE TABLE `relacao_pessoa` (
  `id_pessoa` int NOT NULL,
  `id_tipo_pessoa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `relacao_pessoa`
--

INSERT INTO `relacao_pessoa` (`id_pessoa`, `id_tipo_pessoa`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_pessoa`
--

CREATE TABLE `tipos_pessoa` (
  `id` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipos_pessoa`
--

INSERT INTO `tipos_pessoa` (`id`, `tipo`) VALUES
(1, 'Cliente'),
(2, 'Proprietário'),
(3, 'Usuário');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relacao_pessoa`
--
ALTER TABLE `relacao_pessoa`
  ADD PRIMARY KEY (`id_pessoa`,`id_tipo_pessoa`);

--
-- Índices de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
