-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Mar-2025 às 08:47
-- Versão do servidor: 8.3.0
-- versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `funeraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `ID_Pedido` int NOT NULL AUTO_INCREMENT,
  `ID_Utilizadores` int NOT NULL,
  `ID_Produtos` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Quantidade` int NOT NULL,
  PRIMARY KEY (`ID_Pedido`),
  KEY `ID_Utilizadores` (`ID_Utilizadores`),
  KEY `ID_Produtos` (`ID_Produtos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_Pedido`, `ID_Utilizadores`, `ID_Produtos`, `Tipo`, `Quantidade`) VALUES
(1, 1, 5, 'Vendido', 2),
(2, 2, 8, 'Em processo', 1),
(3, 3, 3, 'Vendido', 4),
(4, 4, 12, 'Não está pronto para venda', 1),
(5, 5, 15, 'Vendido', 3),
(6, 6, 7, 'Em processo', 2),
(7, 7, 9, 'Vendido', 1),
(8, 8, 20, 'Não está pronto para venda', 2),
(9, 9, 4, 'Em processo', 5),
(10, 10, 14, 'Vendido', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `ID_Produtos` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Quantidade` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Produtos`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produtos`, `Nome`, `Quantidade`, `Tipo`) VALUES
(1, 'Caixão de Carvalho Maciço', 10, 'Caixão'),
(2, 'Caixão de Mogno Italiano', 8, 'Caixão'),
(3, 'Caixão de Cedro Premium', 12, 'Caixão'),
(4, 'Caixão de Carvalho com Detalhes Dourados', 6, 'Caixão'),
(5, 'Caixão de Madeira de Nogueira', 9, 'Caixão'),
(6, 'Caixão de Madeira Simples', 15, 'Caixão'),
(7, 'Caixão Ecológico de Bambu', 7, 'Caixão'),
(8, 'Caixão de Carvalho Clássico', 10, 'Caixão'),
(9, 'Caixão Branco Laqueado', 5, 'Caixão'),
(10, 'Caixão de Pinho Canadense', 12, 'Caixão'),
(11, 'Caixão de Luxo com Estofamento', 4, 'Caixão'),
(12, 'Caixão de Cerejeira Natural', 6, 'Caixão'),
(13, 'Caixão de Zinco Selado', 8, 'Caixão'),
(14, 'Caixão de Mármore Revestido', 3, 'Caixão'),
(15, 'Caixão de Fibra de Carbono', 2, 'Caixão'),
(16, 'Caixão Ecológico de Papelão', 20, 'Caixão'),
(17, 'Caixão de Carvalho Escuro', 11, 'Caixão'),
(18, 'Caixão de Ébano Africano', 5, 'Caixão'),
(19, 'Caixão de Madeira com Arabescos', 7, 'Caixão'),
(20, 'Caixão de Metal Reforçado', 6, 'Caixão'),
(21, 'Vela Aromática de Lavanda', 50, 'Vela'),
(22, 'Vela de Cera de Abelha', 40, 'Vela'),
(23, 'Vela de Parafina Tradicional', 60, 'Vela'),
(24, 'Vela de Cera de Soja Orgânica', 30, 'Vela'),
(25, 'Vela com Essência de Baunilha', 55, 'Vela'),
(26, 'Vela Flutuante Branca', 45, 'Vela'),
(27, 'Vela Perfumada de Canela', 35, 'Vela'),
(28, 'Vela com Pavio de Madeira', 25, 'Vela'),
(29, 'Vela Religiosa de Sete Dias', 20, 'Vela'),
(30, 'Vela Decorativa com Glitter', 15, 'Vela'),
(31, 'Rosas Vermelhas', 100, 'Flor'),
(32, 'Lírios Brancos', 80, 'Flor'),
(33, 'Crisântemos Amarelos', 90, 'Flor'),
(34, 'Orquídeas Roxas', 60, 'Flor'),
(35, 'Hortênsias Azuis', 70, 'Flor'),
(36, 'Girassóis', 85, 'Flor'),
(37, 'Tulipas Vermelhas', 75, 'Flor'),
(38, 'Copos-de-Leite', 50, 'Flor'),
(39, 'Gladiolos Brancos', 65, 'Flor'),
(40, 'Cravos Brancos', 40, 'Flor'),
(41, 'Dálias Rosadas', 55, 'Flor'),
(42, 'Jasmins Brancos', 35, 'Flor'),
(43, 'Azaleias Rosas', 45, 'Flor'),
(44, 'Gerânios Vermelhos', 30, 'Flor'),
(45, 'Margaridas Brancas', 90, 'Flor'),
(46, 'Peônias Cor-de-Rosa', 40, 'Flor'),
(47, 'Flor-de-Lis', 25, 'Flor'),
(48, 'Camélias Brancas', 20, 'Flor'),
(49, 'Amor-Perfeito Roxo', 50, 'Flor'),
(50, 'Begônias Laranjas', 30, 'Flor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

DROP TABLE IF EXISTS `utilizadores`;
CREATE TABLE IF NOT EXISTS `utilizadores` (
  `ID_Utilizadores` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Utilizadores`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`ID_Utilizadores`, `Nome`, `Email`, `Cargo`, `Password`) VALUES
(1, 'Carlos Mendes', 'carlos.mendes@gmail.com', 'Diretor Funerário', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(2, 'Mariana Silva', 'mariana.silva@gmail.com', 'Gestora de Cerimónias', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5'),
(3, 'João Oliveira', 'joao.oliveira@gmail.com', 'Agente Funerário', 'e0bc60c82713f64ef8a57c0c40d02ce24fd0141d5cc3086259c19b1e62a62bea'),
(4, 'Fernanda Souza', 'fernanda.souza@gmail.com', 'Consultora de Luto', '48e6f958531e543731746fd0a4fcba173e2ae226d60eb19a5d021be3c29f7a3e'),
(5, 'Ricardo Alves', 'ricardo.alves@gmail.com', 'Tanatopractor', '29624e2e4c4ccee26ed8f3e0ca1012ea57a8f2191be6149f632250f7036119cc'),
(6, 'Ana Pereira', 'ana.pereira@gmail.com', 'Coordenadora de Sepultamentos', '19e58efc7f71d3ec0bd46d451e84674f072ccc74c3128f4f017e6981d4e92543'),
(7, 'Eduardo Lima', 'eduardo.lima@gmail.com', 'Motorista de Carro Funerário', '270fa1445d2cd102ce2ab33bc7e1f03a5a63beabce213c1f495a00ef11e1c5f5'),
(8, 'Tatiane Rocha', 'tatiane.rocha@gmail.com', 'Florista Funerária', '05853cc8379476d8bb3d350625a3bc08b91214049be1847d4e5403cc44715e31'),
(9, 'Bruno Costa', 'bruno.costa@gmail.com', 'Preparador de Corpos', '3d5e554a8268b0baf4ff9d81eb9b77d81e3c3834350caca50c3833da49c6134e'),
(10, 'Vanessa Martins', 'vanessa.martins@gmail.com', 'Gestora do Crematório', '43cb39dedd55125e05517707609603ee95b076a56c110c6c5a5b00dc0d7a557d');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Utilizadores`) REFERENCES `utilizadores` (`ID_Utilizadores`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_Produtos`) REFERENCES `produtos` (`ID_Produtos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
