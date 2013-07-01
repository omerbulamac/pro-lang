-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 27 May 2013, 21:26:16
-- Sunucu sürümü: 5.5.24-log
-- PHP Sürümü: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `cehars`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbolum`
--

CREATE TABLE IF NOT EXISTS `tbolum` (
  `bolumID` int(11) NOT NULL,
  `bolumAd` varchar(100) NOT NULL,
  `fakulteID` int(11) NOT NULL,
  PRIMARY KEY (`bolumID`),
  KEY `fakulteID` (`fakulteID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tbolum`
--

INSERT INTO `tbolum` (`bolumID`, `bolumAd`, `fakulteID`) VALUES
(1, 'bilgisayar', 1),
(2, 'elektrik', 1),
(3, 'endustri', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tfakulte`
--

CREATE TABLE IF NOT EXISTS `tfakulte` (
  `fakulteID` int(11) NOT NULL,
  `fakulteAd` varchar(100) NOT NULL,
  PRIMARY KEY (`fakulteID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tfakulte`
--

INSERT INTO `tfakulte` (`fakulteID`, `fakulteAd`) VALUES
(1, 'muhendislik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `togrenci`
--

CREATE TABLE IF NOT EXISTS `togrenci` (
  `ogrenciID` int(11) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `bolumID` int(11) NOT NULL,
  PRIMARY KEY (`ogrenciID`),
  KEY `bolumID` (`bolumID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `togrenci`
--

INSERT INTO `togrenci` (`ogrenciID`, `ad`, `soyad`, `bolumID`) VALUES
(1, 'hasan', 'arslan', 1),
(2, 'fatih', 'tastemur', 1),
(3, 'aykut', 'karakaya', 1),
(4, 'omer', 'bulamac', 2),
(5, 'mumin', 'aydin', 2),
(6, 'kerem ', 'ogut', 2),
(7, 'ahmet', 'ulu', 3),
(8, 'abdullah', 'elipek', 3),
(9, 'burak', 'oncul', 3);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tbolum`
--
ALTER TABLE `tbolum`
  ADD CONSTRAINT `FK_tbolum_fakulteID` FOREIGN KEY (`fakulteID`) REFERENCES `tfakulte` (`fakulteID`),
  ADD CONSTRAINT `tbolum_ibfk_1` FOREIGN KEY (`fakulteID`) REFERENCES `tfakulte` (`fakulteID`);

--
-- Tablo kısıtlamaları `togrenci`
--
ALTER TABLE `togrenci`
  ADD CONSTRAINT `FK_togrenci_bolumID` FOREIGN KEY (`bolumID`) REFERENCES `tbolum` (`bolumID`),
  ADD CONSTRAINT `togrenci_ibfk_1` FOREIGN KEY (`bolumID`) REFERENCES `tbolum` (`bolumID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
