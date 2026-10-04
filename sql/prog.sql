-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 14, 2024 alle 22:22
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prog`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `codice_fiscale` varchar(20) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `compra`
--

CREATE TABLE `compra` (
  `CF` varchar(20) DEFAULT NULL,
  `id_prodotto` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

CREATE TABLE `prodotto` (
  `misure` int(10) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `materiale` varchar(30) DEFAULT NULL,
  `prezzo` int(10) DEFAULT NULL,
  `ID_prodotto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura`
--

CREATE TABLE `struttura` (
  `tipo` varchar(20) DEFAULT NULL,
  `n_piani` varchar(20) DEFAULT NULL,
  `id_immobile` varchar(20) NOT NULL,
  `cf` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codice_fiscale`);

--
-- Indici per le tabelle `compra`
--
ALTER TABLE `compra`
  ADD KEY `CF` (`CF`),
  ADD KEY `id_prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `prodotto`
--
ALTER TABLE `prodotto`
  ADD PRIMARY KEY (`ID_prodotto`);

--
-- Indici per le tabelle `struttura`
--
ALTER TABLE `struttura`
  ADD PRIMARY KEY (`id_immobile`),
  ADD KEY `cf` (`cf`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `cliente` (`codice_fiscale`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotto` (`ID_prodotto`);

--
-- Limiti per la tabella `struttura`
--
ALTER TABLE `struttura`
  ADD CONSTRAINT `struttura_ibfk_1` FOREIGN KEY (`cf`) REFERENCES `cliente` (`codice_fiscale`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
