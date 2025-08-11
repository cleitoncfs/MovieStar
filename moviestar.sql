-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/03/2024 às 20:10
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `moviestar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `trailer` varchar(150) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `image`, `trailer`, `category`, `length`, `users_id`) VALUES
(1, 'Teste Filme', 'Filme tóp!', NULL, '', 'Ação', '2h', 4),
(2, 'Teste Filme Com todos os dados', 'Este filme é style ;)', '24ae95152db3a84dfd69a109d9a6e1847ffcedab708fc0826fcb5f4dff715b74d481dea69b0b6c7c2e871617960630d257967e8d66bd1698cea62d8e.jpg', 'https://www.youtube.com/embed/OuorSrJLuC4?si=VUT3mZgBDhSFGsks', 'Ação', '1h 20min', 4),
(3, 'Teste com filme de comédia', 'Muito legal!', '271f30f146fb48c58a653917c67ab9a6da4fb760b631b2ac3ee73f5ac19202f1125f7957c1d34ae482632970ca5d6366367748a1f1e6b5fa43a51932.jpg', 'https://www.youtube.com/embed/2ne3tEJJFRc?si=TI_iUR6Z9pIDR4p4', 'Comédia', '1h 12min', 2),
(4, 'Tropa de Elite', 'Filme Brasileiro, muito bom', '17b2b5961f5452482bf4173195ba3e1d0e0490b6e2c26e55425968d59b1f066f57812f8b1e45f20cd88feaf581080fa9b8c0cdff1e0c9ed9afad5f59.jpg', 'https://www.youtube.com/embed/_V_nZNWPYQk?si=yORGGHjUmhzditW_', 'Fantasia / Ficção', '1h 45min', 6),
(5, 'Teste add - BlackBox', 'yyyuuuu', '17f4cf9941a9f118ab5cd985b8e7780bcadcdf427581b6894ed8354ee91e222eb78ac11ae896b339b03dbf1bc2af1badc94ebfe04441fde08e85d763.jpg', '', 'Drama', '1h 56min', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL,
  `movies_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `review`, `users_id`, `movies_id`) VALUES
(1, 10, 'Gostei muito!', 6, 2),
(2, 10, 'muito bom', 2, 2),
(3, 10, 'Ótimo filme', 4, 4),
(4, 8, 'Bom filme', 4, 3),
(5, 6, 'Não curti muito o capitão nascimento', 3, 4),
(6, 8, 'bom filme', 3, 2),
(7, 6, 'medio', 4, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `image`, `token`, `bio`) VALUES
(2, 'Cleiton', 'da Costa Faria Santos', 'cleitoncfs@gmail.com', '$2y$10$oX3o/ZOeKmpEb.rvJdwanuFmFtGvLYkCh0wp.BwTeY4BlceD.hNIe', '98fc851364e8d7ba66df2b6730ba9c0ac703fbd31e38c6fd9696d6adfe82f9590649d07143b6ff16399d9ef1c7419bf50a1fffa27aec08ee6a4087f9.jpg', '5fbd2d3e8303dfbe7f98fa9d3297b0c4d05d8afb8d48847c6b7c92bd7ac099b9ebaefec65ce5900750b10b1e887d71a727d7', ''),
(3, 'caso pratico', 'teste', 'casopratico@teste.com', '$2y$10$kTau/CJDCJxe.x3Tac.bR.uqycRjZ3DYbO3TayeRDsSqNuaUtc7qu', NULL, '7299766c0a6afb9006d6175fd3a0a8a58fa600b459fe757465e81a520089c3042bc962e247b714d8cdbd593d7b1095bdabbe', NULL),
(4, 'Cleiton', 'Santos', 'cleitoncfs@outlook.com', '$2y$10$Dpy16AyH2oOtFMHfmPRqtO0vp/7vLzyFcT.M6oz.n.Xuot9xTD7P.', 'cb7fba96ee7b2b6e0e98e97bd8da6ab735140953c63f033c6d803936c2ff550bfc5dd8266e11679581162a3ac9883fd982e813e262466284339ff335.jpg', 'd8cf1778f2ff850fed51dc34fe4376f7f6eb22a1c82f79e7b72f44fa0502582e86a7db99f509d153b1d8ff81b180540ad375', ''),
(6, 'João', 'Teste', 'joao@teste.com', '$2y$10$0BPgRnIs.vgja1e0oXpY9OZqgnZPoEnSeiv9N7b3QlpV3Ovu9USTO', NULL, 'ffb6dcb99c13db3ef4c5140f15091ca0608346eef356f3e518a6d3951bdab1ba719cf72375915894432adbb655c22fe6c07c', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices de tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
