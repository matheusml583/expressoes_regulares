-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 18-Jan-2023 às 14:28
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Contatos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Dados`
--

CREATE TABLE `Dados` (
  `id` int NOT NULL,
  `id_usuarios` int NOT NULL,
  `email` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefone` int NOT NULL,
  `sexo` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Extraindo dados da tabela `Dados`
--

INSERT INTO `Dados` (`id`, `id_usuarios`, `email`, `telefone`, `sexo`) VALUES
(1, 1, 'matheus05linhares@hotmail.com', 996351318, 'M'),
(2, 2, 'douglascarlini@hotmail.com', 998485282, 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuários`
--

CREATE TABLE `Usuários` (
  `id` int NOT NULL,
  `nome` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Extraindo dados da tabela `Usuários`
--

INSERT INTO `Usuários` (`id`, `nome`) VALUES
(1, 'Matheus Marques Linhares'),
(2, 'DougBoy Carlini');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Dados`
--
ALTER TABLE `Dados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Índices para tabela `Usuários`
--
ALTER TABLE `Usuários`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Dados`
--
ALTER TABLE `Dados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Usuários`
--
ALTER TABLE `Usuários`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
