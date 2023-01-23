SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `Dados` (
  `id` int NOT NULL,
  `id_usuarios` int NOT NULL,
  `email` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefone` int NOT NULL,
  `sexo` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `Dados` (`id`, `id_usuarios`, `email`, `telefone`, `sexo`) VALUES
(1, 1, 'matheus05linhares@hotmail.com', 996351318, 'M'),
(2, 2, 'douglascarlini@hotmail.com', 998485282, 'M');

CREATE TABLE `Usuários` (
  `id` int NOT NULL,
  `nome` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `Usuários` (`id`, `nome`) VALUES
(1, 'Matheus Marques Linhares'),
(2, 'DougBoy Carlini');

ALTER TABLE `Dados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuarios` (`id_usuarios`);
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Dados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `Usuários`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
