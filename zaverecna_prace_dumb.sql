-- phpMyAdmin SQL Dump
-- version 4.3.12
-- http://www.phpmyadmin.net
--
-- Počítač: 185.64.219.6:3306
-- Vytvořeno: Ned 09. čen 2019, 22:01
-- Verze serveru: 5.5.37-MariaDB
-- Verze PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `pedfaukwzcz0536`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `zapis_has_navstevnik`
--

CREATE TABLE IF NOT EXISTS `zapis_has_navstevnik` (
  `zapis_idzapis` int(10) unsigned NOT NULL,
  `navstevnik_idnavstevnik` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `zapis_has_navstevnik`
--

INSERT INTO `zapis_has_navstevnik` (`zapis_idzapis`, `navstevnik_idnavstevnik`) VALUES
(20, 54321),
(26, 12345);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `zapis_has_navstevnik`
--
ALTER TABLE `zapis_has_navstevnik`
  ADD PRIMARY KEY (`zapis_idzapis`,`navstevnik_idnavstevnik`), ADD KEY `fk_zapis_has_navstevnik_navstevnik1_idx` (`navstevnik_idnavstevnik`), ADD KEY `fk_zapis_has_navstevnik_zapis1_idx` (`zapis_idzapis`);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `zapis_has_navstevnik`
--
ALTER TABLE `zapis_has_navstevnik`
ADD CONSTRAINT `fk_zapis_has_navstevnik_navstevnik1` FOREIGN KEY (`navstevnik_idnavstevnik`) REFERENCES `navstevnik` (`idnavstevnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_zapis_has_navstevnik_zapis1` FOREIGN KEY (`zapis_idzapis`) REFERENCES `zapis` (`idzapis`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
