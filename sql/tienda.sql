-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP DATABASE IF EXISTS `tienda`;
CREATE DATABASE `tienda`;
USE `tienda`;

--
-- Table structure for table `imagen`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(450) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idImagen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellidoP` varchar(20) DEFAULT NULL,
  `apellidoM` varchar(20) DEFAULT NULL,
  `fech_na` date DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `tipo` varchar(10) NOT NULL,
  `password` varchar(60) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventario`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(200) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventario`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL AUTO_INCREMENT,
  `idImagen` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `anio` varchar(15) DEFAULT NULL,
  `numPiezas` int(11) DEFAULT NULL,
  `precioCompra` decimal(10,2) DEFAULT NULL,
  `precioVenta` decimal(10,2) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idInventario`),
  FOREIGN KEY (`idImagen`) REFERENCES `imagen`(`idImagen`),
  FOREIGN KEY (`idCategoria`) REFERENCES `categoria`(`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disco`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disco` (
  `idInventario` int(11) NOT NULL AUTO_INCREMENT,
  `numCanciones` int(11) DEFAULT NULL,
  `interprete` varchar(120) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idInventario`),
  FOREIGN KEY ( `idInventario` ) REFERENCES `inventario`(`idInventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarjeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeta` (
  `idTarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idTarjeta`),
  FOREIGN KEY (`idUsuario`)  REFERENCES `usuario`(`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pago`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL AUTO_INCREMENT,
  `pago` decimal(10,2) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idPago` int(11) NOT NULL,
  `idTarjeta` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,4) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idVenta`),
  FOREIGN KEY (`idUsuario`) REFERENCES `usuario`(`idUsuario`),
  FOREIGN KEY (`idPago`) REFERENCES `pago`(`idPago`),
  FOREIGN KEY (`idTarjeta`) REFERENCES `tarjeta`(`idTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `compradetalle`
--



/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compradetalle` (
  `idCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idInventario` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,4) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idCompraDetalle`),
  FOREIGN KEY (`idInventario`) REFERENCES `inventario` (`idInventario`),
  FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `idioma`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(60) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idIdioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `pelicula`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `idInventario` int(11) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  `formato` varchar(150) DEFAULT NULL,
  `director` varchar(250) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idInventario`),
  FOREIGN KEY ( `idInventario` ) REFERENCES `inventario`(`idInventario`),
  FOREIGN KEY (`idIdioma`) REFERENCES `idioma`( `idIdioma` )
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pelicula_subtitulo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula_subtitulo` (
  `idIdioma` int(11) NOT NULL,
  `idPelicula` int(11) NOT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idIdioma`,`idPelicula` ),
  FOREIGN KEY (`idIdioma`) REFERENCES `idioma`( `idIdioma` ),
  FOREIGN KEY (`idPelicula`) REFERENCES `pelicula`( `idInventario` )
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `vendedor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `idUsuario` int(11) NOT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_comida` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `valComision` decimal(10,2) DEFAULT NULL,
  `salarioBase` decimal(10,2) DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL,
  `estatus` boolean NOT NULL DEFAULT 1,
  PRIMARY KEY (`idUsuario`),
  FOREIGN KEY (`idUsuario`) REFERENCES `usuario`(`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-18 12:27:42
