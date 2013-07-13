-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Tem 2013, 18:15:28
-- Sunucu sürümü: 5.5.24-log
-- PHP Sürümü: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `okul`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE IF NOT EXISTS `ogrenci` (
  `numara` varchar(10) NOT NULL,
  `ad` varchar(30) NOT NULL,
  `soyad` varchar(30) NOT NULL,
  `sinif` varchar(5) NOT NULL,
  `parola` varchar(30) NOT NULL,
  PRIMARY KEY (`numara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`numara`, `ad`, `soyad`, `sinif`, `parola`) VALUES
('09060266', 'Hasan', 'Arslan', '4', '123'),
('09060267', 'Aykut ', 'Karakaya', '4', '123456'),
('09060268', 'Ahmet', 'Ulu', '4', '123123'),
('09060269', 'Kerem', 'Ogut', '4', '456'),
('09060270', 'Kerim', 'Aygün', '4', '789');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
