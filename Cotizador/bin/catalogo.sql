-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for catalogo
CREATE DATABASE IF NOT EXISTS `catalogo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `catalogo`;


-- Dumping structure for table catalogo.coberturas_adicionales
CREATE TABLE IF NOT EXISTS `coberturas_adicionales` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL DEFAULT '0',
  `base` decimal(10,2) NOT NULL DEFAULT '0.00',
  `suma_asegurada_limite` decimal(10,2) NOT NULL DEFAULT '0.00',
  `porcentaje_menor_100` decimal(10,3) NOT NULL DEFAULT '0.000',
  `porcentaje_mayor_100` decimal(10,3) NOT NULL DEFAULT '0.000',
  `costo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `robo_parcial` decimal(10,2) DEFAULT '0.00',
  `Menores_desde_16` decimal(10,2) DEFAULT '0.00',
  `Menores_desde_18` decimal(10,2) DEFAULT '0.00',
  `Exceso_RC` decimal(10,2) DEFAULT '0.00',
  `gastos_emision` decimal(10,2) DEFAULT '0.00',
  `asisto` decimal(10,2) DEFAULT '0.00',
  `iva` decimal(10,2) DEFAULT '0.00',
  `Exceso_RC_ElevacionDeCobertura` decimal(10,2) DEFAULT NULL,
  `Exceso_RC_Base` decimal(10,2) DEFAULT NULL,
  `PrimaNetaRC` decimal(10,2) DEFAULT NULL,
  `MenorNombradoRC` decimal(10,2) DEFAULT NULL,
  `PorcentajeResponsabilidadCivil` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.coberturas_adicionales: ~1 rows (approximately)
DELETE FROM `coberturas_adicionales`;
/*!40000 ALTER TABLE `coberturas_adicionales` DISABLE KEYS */;
INSERT INTO `coberturas_adicionales` (`indice`, `codigo`, `base`, `suma_asegurada_limite`, `porcentaje_menor_100`, `porcentaje_mayor_100`, `costo`, `robo_parcial`, `Menores_desde_16`, `Menores_desde_18`, `Exceso_RC`, `gastos_emision`, `asisto`, `iva`, `Exceso_RC_ElevacionDeCobertura`, `Exceso_RC_Base`, `PrimaNetaRC`, `MenorNombradoRC`, `PorcentajeResponsabilidadCivil`) VALUES
	(1, 'Roble', 1000.00, 100000.00, 0.025, 0.020, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 1.05);
/*!40000 ALTER TABLE `coberturas_adicionales` ENABLE KEYS */;


-- Dumping structure for table catalogo.correoautomatico
CREATE TABLE IF NOT EXISTS `correoautomatico` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT '0',
  `mensaje` text,
  `descripcion_codigo` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.correoautomatico: ~0 rows (approximately)
DELETE FROM `correoautomatico`;
/*!40000 ALTER TABLE `correoautomatico` DISABLE KEYS */;
INSERT INTO `correoautomatico` (`indice`, `codigo`, `mensaje`, `descripcion_codigo`) VALUES
	(1, 1, '\r\n<span style="text-decoration: underline;"><p>SEGURO COMPLETO</p></span> \r\n <br />\r\n  <br />\r\n   <br />\r\n<p>De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo el plan exclusivo de colaboradores del banco.</p>\r\n<p>En caso de ser aceptada la propuesta, necesitamos nos pueda enviar por esta v&iacute;a copia de los siguientes documentos:</p>\r\n<p>Tarjeta de circulaci&oacute;n (legible)<br />DPI<br />Recibo reciente de agua, luz o tel&eacute;fono fijo que refleje su direcci&oacute;n particular.<br />Completar campos marcados en color gris del Formulario ASR27 y enviarlo en excel (adjunto archivo) <br />Indicar su No. GEID</p>\r\n<p>Se deber&aacute; realizar una inspecci&oacute;n al veh&iacute;culo y las opciones para realizar dicha inspecci&oacute;n son las siguientes:</p>\r\n<p>Promotores Unity Avenida de las Am&eacute;ricas 22-23, Zona 14 (Frente al Monumento al Papa en horario de 8 a 16 hrs)<br />Parqueo Piedr&iacute;n/C&eacute;ntrica Plaza (fecha a convenir)<br />Campus zona 12 (fecha a convenir) <br />Cualquiera de los centros de atenci&oacute;n de Seguros El Roble, si lo realiza en estos centros, deber&aacute; hacer CITA e indicar a la persona que le realice la inspecci&oacute;n que es para incluir el veh&iacute;culo en la flotilla de CITI y que va de parte de Promotores Unity. Esta persona le entregar&aacute; una copia de la hoja que &eacute;l llena, misma que deber&aacute; de enviarnos por esta v&iacute;a a nosotros.</p>\r\n<p>Los centros autorizados por Seguros El Roble para realizar las inspecciones son:</p>\r\n\r\n<table><tr><th>TALLER</th><th>DIRECCI&Oacute;N</th><th>TEL&Eacute;FONO</th> </tr>\r\n\r\n <tr><td>QUANTUM</td><td>20 calle 18-01,zona 10</td><td>2384-1412</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD ZONA 9</td><td>6a. Calle 6-17, zona 9</td><td>2504-3939</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD CARRETERA</td><td>Km 16.5 Carr. A El Salvador</td><td>2504-3939</td></tr>\r\n <tr><td>BODY FIX</td><td>Av. Petapa 43-15 Z12</td><td>2388-5500</td></tr>\r\n <tr><td>AUTOCOLOR</td><td>10a. Avenida A 0-38 Z.7</td><td>2419-3800</td></tr>\r\n <tr><td>TALLER SPECTRA</td><td>25 Av. 4-34 Zona 11</td><td>2474-2033</td></tr>\r\n <tr><td>UNIAUTO</td><td>Avenida Petapa 36-19 zona 12</td><td>2328 8879</td></tr>\r\n <tr><td>TALLER RODAS ZONA 5</td><td>11 Avenida B 31-15 zona 5</td><td>2331-9106</td></tr>\r\n <tr><td>COJULUN ROOSEVELT</td><td>7 avenida 0-07, zona 2 de Mixco</td><td>2250-4602</td></tr>\r\n </table>\r\n <br />Su veh&iacute;culo queda asegurado inmediatamente despu&eacute;s de haber realizado la inspecci&oacute;n y completado los documentos ac&aacute; detallados.<br />Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.<br /> <br /> <br />Atentamente,</p> <br /> <br /> <br />\r\n', 'Mensaje del cotizador envio automatico'),
	(2, 2, '<span style="text-decoration: underline;"><p>SOLO RC</p></span> \r\n <br />\r\n  <br />\r\n   <br />\r\n<p><span style="font-weight: 400;">De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo &nbsp;el plan exclusivo de colaboradores del banco.</span></p>\r\n<p><span style="font-weight: 400;">En caso de ser aceptada la propuesta, &nbsp;favor enviar los siguientes documentos:</span></p>\r\n<br />\r\n<ul>\r\n<li><strong><strong>Tarjeta de circulaci&oacute;n</strong></strong></li>\r\n<li><strong>DPI</strong></li>\r\n<li style="font-weight: 400;"><strong>Recibo reciente de agua, luz o tel&eacute;fono fijo&nbsp;</strong><span style="font-weight: 400;">que refleje su direcci&oacute;n particular.</span></li>\r\n<li style="font-weight: 400;"><span style="font-weight: 400;">Completar campos&nbsp;</span><span style="font-weight: 400;">marcados en color gris</span><span style="font-weight: 400;">&nbsp;del Formulario&nbsp;&nbsp;</span><strong>ASR27</strong><span style="font-weight: 400;">&nbsp;y enviarlo en excel (adjunto)</span><strong> No. GEID</strong></li>\r\n</ul>\r\n<p><span style="font-weight: 400;">Dichos documentos puede enviarlos&nbsp;&nbsp;escaneados, hasta que nosotros tengamos los documentos completos el veh&iacute;culo queda asegurado.</span></p>\r\n<p><span style="font-weight: 400;">Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.</span></p>\r\n  <br />\r\n   <br />\r\n<p><span style="font-weight: 400;">Cordialmente,</span></p>\r\n<p>&nbsp;</p>\r\n', 'Mensaje 2 del cotizador envio automatico');
/*!40000 ALTER TABLE `correoautomatico` ENABLE KEYS */;


-- Dumping structure for table catalogo.correosinternos
CREATE TABLE IF NOT EXISTS `correosinternos` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(75) NOT NULL DEFAULT '0',
  `CodigoEmpresa` varchar(75) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Correo`,`CodigoEmpresa`),
  KEY `indice` (`indice`),
  KEY `FK__coberturas_adicionales` (`CodigoEmpresa`),
  CONSTRAINT `FK__coberturas_adicionales` FOREIGN KEY (`CodigoEmpresa`) REFERENCES `coberturas_adicionales` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.correosinternos: ~0 rows (approximately)
DELETE FROM `correosinternos`;
/*!40000 ALTER TABLE `correosinternos` DISABLE KEYS */;
INSERT INTO `correosinternos` (`indice`, `Correo`, `CodigoEmpresa`) VALUES
	(3, 'erik.castaneda@unitypromotores.com', 'Roble');
/*!40000 ALTER TABLE `correosinternos` ENABLE KEYS */;


-- Dumping structure for table catalogo.iva
CREATE TABLE IF NOT EXISTS `iva` (
  `Iva` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.iva: ~0 rows (approximately)
DELETE FROM `iva`;
/*!40000 ALTER TABLE `iva` DISABLE KEYS */;
INSERT INTO `iva` (`Iva`) VALUES
	(12.00);
/*!40000 ALTER TABLE `iva` ENABLE KEYS */;


-- Dumping structure for table catalogo.linea
CREATE TABLE IF NOT EXISTS `linea` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.linea: ~11 rows (approximately)
DELETE FROM `linea`;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` (`indice`, `Descripcion`) VALUES
	(6, '3 SEDAN'),
	(7, '325i'),
	(12, 'ACCENT'),
	(3, 'CIVIC'),
	(11, 'CIVIC LX'),
	(10, 'COROLLA'),
	(2, 'CRV'),
	(9, 'MIRAGE'),
	(13, 'PROTEGE'),
	(8, 'RAV4'),
	(1, 'SCION XD'),
	(4, 'YARIS');
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;


-- Dumping structure for table catalogo.logcorreosenviados
CREATE TABLE IF NOT EXISTS `logcorreosenviados` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(500) DEFAULT '0',
  `Correo` varchar(500) DEFAULT '0',
  `TipoDeVehiculo` varchar(200) DEFAULT '0',
  `Linea` varchar(500) DEFAULT '0',
  `Marca` varchar(300) DEFAULT '0',
  `Telefono` varchar(75) DEFAULT '0',
  `Modelo` varchar(75) DEFAULT '0',
  `SumaAsegurada` decimal(8,2) DEFAULT '0.00',
  `Fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `TipoSeguro` varchar(500) DEFAULT NULL,
  `contactar` varchar(100) DEFAULT NULL,
  `CodigoEmpresa` varchar(150) DEFAULT NULL,
  `ComoContactar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.logcorreosenviados: ~91 rows (approximately)
DELETE FROM `logcorreosenviados`;
/*!40000 ALTER TABLE `logcorreosenviados` DISABLE KEYS */;
INSERT INTO `logcorreosenviados` (`indice`, `Nombre`, `Correo`, `TipoDeVehiculo`, `Linea`, `Marca`, `Telefono`, `Modelo`, `SumaAsegurada`, `Fecha`, `TipoSeguro`, `contactar`, `CodigoEmpresa`, `ComoContactar`) VALUES
	(2, 'Monica Arce', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '654654654', '2000', 350000.00, '2016-08-18 21:36:13', 'Responsabilidad Civil', NULL, 'Roble', NULL),
	(3, 'Monica Arce', 'castaneda.erik@hotmail.com', 'Automovil', '3 SEDAN', 'BMW', '24654974', '2000', 35000.00, '2016-08-18 21:56:10', 'Daños a Terceros', NULL, 'Roble', NULL),
	(4, 'Monica Arce', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '654654314', '2000', 7500.00, '2016-08-18 22:33:00', 'Daños a Terceros', NULL, 'Roble', NULL),
	(5, 'Monica Arce', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46198798', '2000', 15400.00, '2016-08-18 22:46:46', 'Daños a Terceros', NULL, 'Roble', NULL),
	(6, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46198798', '2000', 15400.00, '2016-08-18 22:47:53', 'Daños a Terceros', NULL, 'Roble', NULL),
	(7, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:52:14', 'Daños a Terceros', NULL, 'Roble', NULL),
	(8, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:53:15', 'Daños a Terceros', NULL, 'Roble', NULL),
	(9, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '46546879', '2000', 15000.00, '2016-08-18 22:54:07', 'Daños a Terceros', NULL, 'Roble', NULL),
	(10, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '465465465', '2000', 15000.00, '2016-08-19 15:44:51', 'Responsabilidad Civil', NULL, 'Roble', NULL),
	(11, 'monica arce', 'monica.arce@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '465465465', '2000', 15000.00, '2016-08-19 15:46:43', 'Responsabilidad Civil', NULL, 'Roble', NULL),
	(12, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '12345647', '2000', 5000.00, '2016-08-22 11:39:09', 'Daños a Terceros', NULL, 'Roble', NULL),
	(13, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '13265465', '2000', 5000.00, '2016-08-22 11:43:02', 'Daños a Terceros', NULL, 'Roble', NULL),
	(14, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 11:44:19', 'Daños a Terceros', NULL, 'Roble', NULL),
	(15, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '12345665', '2000', 5000.00, '2016-08-22 11:50:47', 'Daños a Terceros', NULL, 'Roble', NULL),
	(16, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 12:14:14', 'Daños a Terceros', NULL, 'Roble', NULL),
	(17, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-22 13:51:41', 'Seguro Completo', NULL, 'Roble', NULL),
	(18, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 13:55:30', 'Seguro Completo', NULL, 'Roble', NULL),
	(19, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Automovil', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-22 13:56:03', 'Responsabilidad Civil', NULL, 'Roble', NULL),
	(20, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 5000.00, '2016-08-23 09:47:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(21, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '13246549', '2000', 50000.00, '2016-08-23 13:39:58', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(22, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 5050.00, '2016-08-23 13:44:24', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(23, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465165', '2000', 47000.00, '2016-08-23 14:33:01', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(24, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:42:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(25, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 470000.00, '2016-08-23 14:47:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(26, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:49:16', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(27, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:56:39', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(28, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 14:57:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(29, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465165', '2000', 47000.00, '2016-08-23 15:07:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(30, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:09:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(31, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:11:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(32, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 470000.00, '2016-08-23 15:13:30', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(33, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:14:25', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(34, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:23:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(35, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:45:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(36, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 47000.00, '2016-08-23 15:51:31', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(37, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '54987987', '2000', 135000.00, '2016-08-23 15:57:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(38, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 15:57:48', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(39, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:10:01', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(40, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:12:47', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(41, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65798798', '2000', 135000.00, '2016-08-23 16:13:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(42, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65798798', '2005', 180000.00, '2016-08-23 16:24:22', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(43, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:34:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(44, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 135000.00, '2016-08-23 16:36:30', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(45, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65468798', '2000', 135000.00, '2016-08-23 16:53:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(46, 'Julian Presa', 'julian.presa@unitypromotores.com', 'Agrícola 4x4', 'RAV4', 'Toyota', '23863700', '2014', 200000.00, '2016-08-24 08:21:33', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL),
	(47, 'erik castañeda', 'erik.castaneda@hotmail.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-24 09:08:07', 'Seguro Completo', 'erik.castaneda@hotmail.com', 'Roble', NULL),
	(48, 'Erik Castañeda', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 50000.00, '2016-08-24 09:09:33', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(49, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 154000.00, '2016-08-25 08:56:21', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(50, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 500000.00, '2016-08-25 09:45:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(51, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 09:51:28', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(52, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 09:58:46', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(53, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 45000.00, '2016-08-25 10:20:21', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(54, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '46546546', '2000', 145000.00, '2016-08-26 09:02:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(55, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:05:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(56, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:07:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(57, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:09:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(58, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:11:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(59, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:13:50', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(60, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:15:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(61, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:22:55', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(62, 'Julian Presa', 'julian.presa@unitypromotores.com', 'Agrícola 4x4', 'CRV', 'Honda', '23863700', '2015', 200000.00, '2016-08-26 09:28:01', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL),
	(63, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:40:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(64, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 09:56:36', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(65, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:10:33', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(66, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:12:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(67, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:19:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(68, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:23:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(69, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:32:12', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(70, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:34:03', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(71, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:43:28', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(72, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:49:56', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(73, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 10:55:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(74, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:00:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(75, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:03:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(76, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:06:52', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(77, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:12:38', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(78, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:21:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(79, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 11:28:08', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(80, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '64654654', '2000', 0.00, '2016-08-26 13:58:01', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(81, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 15:10:35', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(82, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 145000.00, '2016-08-26 15:11:52', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(83, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 195000.00, '2016-08-26 15:32:06', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(84, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 155000.00, '2016-08-26 15:36:26', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(85, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 155000.00, '2016-08-26 15:44:14', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(86, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 15:51:37', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(87, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 15:54:37', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(88, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 0.00, '2016-08-26 16:00:42', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(89, 'monica arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '65465465', '2000', 95000.00, '2016-08-26 16:06:03', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', NULL),
	(90, 'Luis Alberto Flores', 'luis.flores@unitypromotores.com', 'Automóvil', '325i', 'BMW', '52041839', '2014', 150000.00, '2016-08-26 16:32:15', 'Seguro Completo', 'luis.flores@unitypromotores.com', 'Roble', NULL),
	(91, 'Julian Presa', 'julian.presa@unitypromotores.com', 'Agrícola 4x2', '3 SEDAN', 'BMW', '52016759', '2010', 200000.00, '2016-08-26 17:14:26', 'Seguro Completo', 'julian.presa@unitypromotores.com', 'Roble', NULL),
	(92, 'CEsar', 'cesar.roldan@unityseguros.xom', 'Agrícola 4x2', '3 SEDAN', 'BMW', '12345678', '2000', 100000.00, '2016-08-29 08:19:34', 'Seguro Completo', 'cesar.roldan@unityseguros.xom', 'Roble', NULL),
	(93, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '325', 'BMW', '65465465', '2007', 65000.00, '2016-08-29 09:28:02', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat'),
	(94, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 09:48:32', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(95, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 09:57:47', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(96, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 35000.00, '2016-08-29 10:05:24', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - 3 PM'),
	(97, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 35500.00, '2016-08-29 10:13:43', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - 4 PM'),
	(98, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 500000.00, '2016-08-29 10:18:40', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente'),
	(99, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 25000.00, '2016-08-29 11:02:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(100, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', 'I 325', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 11:34:20', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(101, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '54654654', '2000', 25500.00, '2016-08-29 11:38:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente'),
	(102, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 45000.00, '2016-08-29 12:07:22', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(103, 'Julian Presa', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 35000.00, '2016-08-29 12:12:19', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - 4 PM'),
	(104, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 25750.00, '2016-08-29 12:21:53', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Chat - Inmediatamente'),
	(105, 'Monica Arce', 'erik.castaneda@unitypromotores.com', 'Agrícola 4x2', '323 I', 'BMW', '65465465', '2000', 25500.00, '2016-08-29 12:29:58', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Roble', 'Por Telefono - Inmediatamente');
/*!40000 ALTER TABLE `logcorreosenviados` ENABLE KEYS */;


-- Dumping structure for table catalogo.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.marca: ~7 rows (approximately)
DELETE FROM `marca`;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`indice`, `Descripcion`) VALUES
	(4, 'BMW'),
	(7, 'Honda'),
	(6, 'Mazda'),
	(3, 'Mercedez Benz'),
	(8, 'Mitsubishi'),
	(2, 'Nissan'),
	(1, 'Toyota'),
	(5, 'Volkswagen');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;


-- Dumping structure for table catalogo.modelo
CREATE TABLE IF NOT EXISTS `modelo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.modelo: ~17 rows (approximately)
DELETE FROM `modelo`;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` (`indice`, `Descripcion`) VALUES
	(1, '2000'),
	(2, '2001'),
	(3, '2002'),
	(4, '2003'),
	(5, '2004'),
	(6, '2005'),
	(7, '2006'),
	(8, '2007'),
	(9, '2008'),
	(10, '2009'),
	(11, '2010'),
	(12, '2011'),
	(13, '2012'),
	(14, '2013'),
	(15, '2014'),
	(16, '2015'),
	(17, '2016');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;


-- Dumping structure for table catalogo.tipodevehiculo
CREATE TABLE IF NOT EXISTS `tipodevehiculo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.tipodevehiculo: ~36 rows (approximately)
DELETE FROM `tipodevehiculo`;
/*!40000 ALTER TABLE `tipodevehiculo` DISABLE KEYS */;
INSERT INTO `tipodevehiculo` (`indice`, `Descripcion`) VALUES
	(22, 'Agrícola 4x2'),
	(8, 'Agrícola 4x4'),
	(25, 'Autobús'),
	(5, 'Automóvil'),
	(36, 'Bus'),
	(38, 'Cabezal'),
	(37, 'Camión'),
	(26, 'Camioneta'),
	(27, 'Camioneta 4x2'),
	(9, 'Camioneta 4x4'),
	(29, 'Camioneta Sport'),
	(21, 'Camionetilla'),
	(18, 'Carro Funerario'),
	(32, 'Cisterna'),
	(15, 'Furgon'),
	(24, 'Jeep'),
	(11, 'Jeep 4x2'),
	(20, 'Jeep 4x4'),
	(6, 'Maquinaria'),
	(23, 'Microbús'),
	(35, 'Microbús hasta 12 p.'),
	(19, 'Microbús más 12 p.'),
	(10, 'Mini Van'),
	(33, 'Montacargas'),
	(7, 'Motocicleta'),
	(34, 'Panel'),
	(28, 'Pick Up'),
	(30, 'Pick Up 4x2'),
	(31, 'Pick Up 4x4'),
	(16, 'Pick-Up hasta 1 ton.'),
	(17, 'Pick-Up más 1 ton.'),
	(13, 'Pipa'),
	(14, 'Plataforma'),
	(39, 'Remolque'),
	(40, 'Temporal'),
	(12, 'Tractor');
/*!40000 ALTER TABLE `tipodevehiculo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
