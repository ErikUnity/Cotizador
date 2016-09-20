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


-- Dumping structure for table catalogo.iva
CREATE TABLE IF NOT EXISTS `iva` (
  `Iva` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.iva: ~1 rows (approximately)
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

-- Dumping data for table catalogo.linea: ~12 rows (approximately)
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


-- Dumping structure for table catalogo.maestro_correoautomatico
CREATE TABLE IF NOT EXISTS `maestro_correoautomatico` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT '0',
  `mensaje` text,
  `descripcion_codigo` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_correoautomatico: ~9 rows (approximately)
DELETE FROM `maestro_correoautomatico`;
/*!40000 ALTER TABLE `maestro_correoautomatico` DISABLE KEYS */;
INSERT INTO `maestro_correoautomatico` (`indice`, `codigo`, `mensaje`, `descripcion_codigo`) VALUES
	(1, 1111, '\r\n<span style="text-decoration: underline;"><p>SEGURO COMPLETO</p></span> \r\n <br />\r\n  <br />\r\n   <br />\r\n<p>De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo el plan exclusivo de colaboradores del banco.</p>\r\n<p>En caso de ser aceptada la propuesta, necesitamos nos pueda enviar por esta v&iacute;a copia de los siguientes documentos:</p>\r\n<p>Tarjeta de circulaci&oacute;n (legible)<br />DPI<br />Recibo reciente de agua, luz o tel&eacute;fono fijo que refleje su direcci&oacute;n particular.<br />Completar campos marcados en color gris del Formulario ASR27 y enviarlo en excel (adjunto archivo) <br />Indicar su No. GEID</p>\r\n<p>Se deber&aacute; realizar una inspecci&oacute;n al veh&iacute;culo y las opciones para realizar dicha inspecci&oacute;n son las siguientes:</p>\r\n<p>Promotores Unity Avenida de las Am&eacute;ricas 22-23, Zona 14 (Frente al Monumento al Papa en horario de 8 a 16 hrs)<br />Parqueo Piedr&iacute;n/C&eacute;ntrica Plaza (fecha a convenir)<br />Campus zona 12 (fecha a convenir) <br />Cualquiera de los centros de atenci&oacute;n de Seguros El Roble, si lo realiza en estos centros, deber&aacute; hacer CITA e indicar a la persona que le realice la inspecci&oacute;n que es para incluir el veh&iacute;culo en la flotilla de CITI y que va de parte de Promotores Unity. Esta persona le entregar&aacute; una copia de la hoja que &eacute;l llena, misma que deber&aacute; de enviarnos por esta v&iacute;a a nosotros.</p>\r\n<p>Los centros autorizados por Seguros El Roble para realizar las inspecciones son:</p>\r\n\r\n<table><tr><th>TALLER</th><th>DIRECCI&Oacute;N</th><th>TEL&Eacute;FONO</th> </tr>\r\n\r\n <tr><td>QUANTUM</td><td>20 calle 18-01,zona 10</td><td>2384-1412</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD ZONA 9</td><td>6a. Calle 6-17, zona 9</td><td>2504-3939</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD CARRETERA</td><td>Km 16.5 Carr. A El Salvador</td><td>2504-3939</td></tr>\r\n <tr><td>BODY FIX</td><td>Av. Petapa 43-15 Z12</td><td>2388-5500</td></tr>\r\n <tr><td>AUTOCOLOR</td><td>10a. Avenida A 0-38 Z.7</td><td>2419-3800</td></tr>\r\n <tr><td>TALLER SPECTRA</td><td>25 Av. 4-34 Zona 11</td><td>2474-2033</td></tr>\r\n <tr><td>UNIAUTO</td><td>Avenida Petapa 36-19 zona 12</td><td>2328 8879</td></tr>\r\n <tr><td>TALLER RODAS ZONA 5</td><td>11 Avenida B 31-15 zona 5</td><td>2331-9106</td></tr>\r\n <tr><td>COJULUN ROOSEVELT</td><td>7 avenida 0-07, zona 2 de Mixco</td><td>2250-4602</td></tr>\r\n </table>\r\n <br />Su veh&iacute;culo queda asegurado inmediatamente despu&eacute;s de haber realizado la inspecci&oacute;n y completado los documentos ac&aacute; detallados.<br />Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.<br /> <br /> <br />Atentamente,</p> <br /> <br /> <br />\r\n', 'Seguro Completo'),
	(2, 2, '<div style="width:650px;>"  <span style="text-decoration: underline;"><p style="text-decoration: underline;">SOLO RC</p></span> \r\n<p><span style="font-weight: 400;">De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo &nbsp;el plan exclusivo de colaboradores del banco.</span></p>\r\n<p><span style="font-weight: 400;">En caso de ser aceptada la propuesta, &nbsp;favor enviar los siguientes documentos:</span></p>\r\n<br />\r\n<ul>\r\n<li><strong><strong>Tarjeta de circulaci&oacute;n</strong></strong></li>\r\n<li><strong>DPI</strong></li>\r\n<li style="font-weight: 400;"><strong>Recibo reciente de agua, luz o tel&eacute;fono fijo&nbsp;</strong><span style="font-weight: 400;">que refleje su direcci&oacute;n particular.</span></li>\r\n<li style="font-weight: 400;"><span style="font-weight: 400;">Completar campos&nbsp;</span><span style="font-weight: 400;">marcados en color gris</span><span style="font-weight: 400;">&nbsp;del Formulario&nbsp;&nbsp;</span><strong>ASR27</strong><span style="font-weight: 400;">&nbsp;y enviarlo en excel (adjunto)</span><strong> No. GEID</strong></li>\r\n</ul>\r\n<p><span style="font-weight: 400;">Dichos documentos puede enviarlos&nbsp;&nbsp;escaneados, hasta que nosotros tengamos los documentos completos el veh&iacute;culo queda asegurado.</span></p>\r\n<p><span style="font-weight: 400;">Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.</span></p>\r\n            <table>\r\n             <tr style="width:100%;"><td class="tat">\r\n                     <a href="{Link1}"><img src="{Paso1}" style="width:150px; height:150px;" /></a></td><td></td><td class="tat"></td>\r\n            <td style="width:200px;"></td>\r\n				 <td>\r\n                 </td><td class="tat"></td>\r\n             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link3}"><img src="{Paso3}" style="width:150px; height:150px;" /></a></td></tr></table>\r\n   <br />\r\n<p><span style="font-weight: 400;">Cordialmente,</span></p>\r\n<p>&nbsp;</p></div>\r\n', 'Responsabilidad Civil'),
	(3, 1, '<div style="width:650px;">\r\n        <p><font style="font-family:Calibri; font-size:medium;">Gracias por tomarnos en cuenta para la asesor&iacute;a en el seguro de su veh&iacute;culo. Unity Promotores es una empresa  con  m&aacute;s  de  35  a&ntilde;os de  estar en el mercado Guatemalteco.</font></p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">A continuaci&oacute;n le presentamos 3 sencillos pasos que Ud. debe seguir para poder contratar el seguro de su veh&iacute;culo.</font></p>\r\n         <table>\r\n             <tr style="width:100%;"><td class="tat">\r\n                     <a href="{Link1}"><img src="{Paso1}" style="width:150px; height:150px;" /></a></td><td></td><td class="tat"></td>\r\n            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link2}"><img src="{Paso2}" style="width:150px; height:150px;" /></a></td><td class="tat"></td>\r\n             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link3}"><img src="{Paso3}" style="width:150px; height:150px;" /></a></td></tr></table>\r\n        <p>&nbsp;</p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">En breve uno de nuestros asesores especializados se estar&aacute; comunicando con usted para resolver dudas y guiarlo/a en el proceso de contrataci&oacute;n del seguro para su veh&iacute;culo.</font></p>\r\n    </div>', 'Correo Automatico Cotizador Formato Gerencial'),
	(4, 4, '</br>\r\n<p>Deber&aacute; realizar una inspecci&oacute;n al veh&iacute;culo y las opciones para realizar dicha inspecci&oacute;n son las siguientes: </p>\r\n <table id="Talleres"><tr><th>TALLER</th><th>DIRECCI&Oacute;N</th><th>TEL&Eacute;FONO </th> </tr>\r\n <tr><td>UNITY PROMOTORES</td><td>Avenida Las Americas 22-23 zona14</td><td>2386-3700</td></tr>\r\n <tr><td>QUANTUM</td><td>20 calle 18-01,zona 10</td><td>2384-1412</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD ZONA 9</td><td>6a. Calle 6-17, zona 9</td><td>2504-3939</td></tr>\r\n <tr><td>TALLER DE LA CIUDAD CARRETERA</td><td>Km 16.5 Carr. A El Salvador</td><td>2504-3939</td></tr>\r\n <tr><td>BODY FIX</td><td>Av. Petapa 43-15 Z12</td><td>2388-5500</td></tr>\r\n <tr><td>AUTOCOLOR</td><td>10a. Avenida A 0-38 Z.7</td><td>2419-3800</td></tr>\r\n <tr><td>TALLER SPECTRA</td><td>25 Av. 4-34 Zona 11</td><td>2474-2033</td></tr>\r\n <tr><td>UNIAUTO</td><td>Avenida Petapa 36-19 zona 12</td><td>2328 8879</td></tr>\r\n <tr><td>TALLER RODAS ZONA 5</td><td>11 Avenida B 31-15 zona 5</td><td>2331-9106</td></tr>\r\n <tr><td>COJULUN ROOSEVELT</td><td>7 avenida 0-07, zona 2 de Mixco</td><td>2250-4602</td></tr>\r\n </table>\r\n \r\n <br />\r\n Su veh&iacute;culo queda asegurado inmediatamente despu&eacute;s de haber realizado la inspecci&oacute;n y completado los documentos en el paso 3 . Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.<br /> <br /> <br />Atentamente,</p> <br /> <br /> <br />', 'Se utilizapara el paso 2 informativo.'),
	(5, 5, '<p>Estimado/a {Nombre}<br /> <br /> Su cotizaci&oacute;n en el paso 3 ya fue utilizada previamente, \r\npara actualizar sus datos un ejecutivo de cuenta le <br /> estara contactando en breve.<br /> <br /> <br />Saludos Cordiales</p>\r\n<br /><a>{Datos}</a> ', 'Mensaje del Paso3 en caso de que la información ya fue almacenada previamente.'),
	(6, 6, '<p>Estimado/a {Nombre}<br /> <br /> Su cotizaci&oacute;n en el paso 3 fue completada con exito, \r\nun ejecutivo le estara contactando en breve.<br /> <br /> <br />Saludos Cordiales</p>\r\n<br /><a>{Datos}</a> ', 'Correo indicando la completación del paso 3'),
	(7, 7, '<div style="width:650px;">\r\n        <p><font style="font-family:Calibri; font-size:medium;">Gracias por tomarnos en cuenta para la asesor&iacute;a en el seguro de su veh&iacute;culo. Unity Promotores es una empresa  con  m&aacute;s  de  35  a&ntilde;os de  estar en el mercado Guatemalteco.</font></p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">A continuaci&oacute;n le presentamos 3 sencillos pasos que Ud. debe seguir para poder contratar el seguro de su veh&iacute;culo.</font></p>\r\n         <table>\r\n             <tr style="width:100%;"><td class="tat">\r\n                     <a href="{Link1}"><img src="{Paso1}" style="width:150px; height:150px;" /></a></td><td></td><td class="tat"></td>\r\n            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link2}"><img src="{Paso2}" style="width:150px; height:150px;" /></a></td><td class="tat"></td>\r\n             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link3}"><img src="{Paso3}" style="width:150px; height:150px;" /></a></td></tr></table>\r\n        <p>&nbsp;</p>\r\n        <p><font style="font-family:Calibri; font-size:medium;">En breve uno de nuestros asesores especializados se estar&aacute; comunicando con usted para resolver dudas y guiarlo/a en el proceso de contrataci&oacute;n del seguro para su veh&iacute;culo.</font></p>\r\n    </div>', 'Mennsaje para Motos Seguro Completo'),
	(8, 8, '<div style="width:650px;>"  <span style="text-decoration: underline;"><p style="text-decoration: underline;">SOLO RC</p></span> \r\n<p><span style="font-weight: 400;">De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo &nbsp;el plan exclusivo de colaboradores del banco.</span></p>\r\n<p><span style="font-weight: 400;">En caso de ser aceptada la propuesta, &nbsp;favor enviar los siguientes documentos:</span></p>\r\n<br />\r\n<ul>\r\n<li><strong><strong>Tarjeta de circulaci&oacute;n</strong></strong></li>\r\n<li><strong>DPI</strong></li>\r\n<li style="font-weight: 400;"><strong>Recibo reciente de agua, luz o tel&eacute;fono fijo&nbsp;</strong><span style="font-weight: 400;">que refleje su direcci&oacute;n particular.</span></li>\r\n<li style="font-weight: 400;"><span style="font-weight: 400;">Completar campos&nbsp;</span><span style="font-weight: 400;">marcados en color gris</span><span style="font-weight: 400;">&nbsp;del Formulario&nbsp;&nbsp;</span><strong>ASR27</strong><span style="font-weight: 400;">&nbsp;y enviarlo en excel (adjunto)</span><strong> No. GEID</strong></li>\r\n</ul>\r\n<p><span style="font-weight: 400;">Dichos documentos puede enviarlos&nbsp;&nbsp;escaneados, hasta que nosotros tengamos los documentos completos el veh&iacute;culo queda asegurado.</span></p>\r\n<p><span style="font-weight: 400;">Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.</span></p>\r\n            <table>\r\n             <tr style="width:100%;"><td class="tat">\r\n                     <a href="{Link1}"><img src="{Paso1}" style="width:150px; height:150px;" /></a></td><td></td><td class="tat"></td>\r\n            <td style="width:200px;"></td>\r\n				 <td>\r\n                 </td><td class="tat"></td>\r\n             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link3}"><img src="{Paso3}" style="width:150px; height:150px;" /></a></td></tr></table>\r\n   <br />\r\n<p><span style="font-weight: 400;">Cordialmente,</span></p>\r\n<p>&nbsp;</p></div>\r\n', 'Mensaje para Motos Responsabilidad Civil'),
	(9, 3, '<div style="width:650px;>"  <span style="text-decoration: underline;"><p style="text-decoration: underline;">SOLO RC</p></span> \r\n<p><span style="font-weight: 400;">De acuerdo a su solicitud, adjunto encontrar&aacute; cotizaci&oacute;n para el seguro de su veh&iacute;culo bajo &nbsp;el plan exclusivo de colaboradores del banco.</span></p>\r\n<p><span style="font-weight: 400;">En caso de ser aceptada la propuesta, &nbsp;favor enviar los siguientes documentos:</span></p>\r\n<br />\r\n<ul>\r\n<li><strong><strong>Tarjeta de circulaci&oacute;n</strong></strong></li>\r\n<li><strong>DPI</strong></li>\r\n<li style="font-weight: 400;"><strong>Recibo reciente de agua, luz o tel&eacute;fono fijo&nbsp;</strong><span style="font-weight: 400;">que refleje su direcci&oacute;n particular.</span></li>\r\n<li style="font-weight: 400;"><span style="font-weight: 400;">Completar campos&nbsp;</span><span style="font-weight: 400;">marcados en color gris</span><span style="font-weight: 400;">&nbsp;del Formulario&nbsp;&nbsp;</span><strong>ASR27</strong><span style="font-weight: 400;">&nbsp;y enviarlo en excel (adjunto)</span><strong> No. GEID</strong></li>\r\n</ul>\r\n<p><span style="font-weight: 400;">Dichos documentos puede enviarlos&nbsp;&nbsp;escaneados, hasta que nosotros tengamos los documentos completos el veh&iacute;culo queda asegurado.</span></p>\r\n<p><span style="font-weight: 400;">Agradecemos su atenci&oacute;n y cualquier consulta adicional quedamos a las &oacute;rdenes.</span></p>\r\n            <table>\r\n             <tr style="width:100%;"><td class="tat">\r\n                     <a href="{Link1}"><img src="{Paso1}" style="width:150px; height:150px;" /></a></td><td></td><td class="tat"></td>\r\n            <td style="width:200px;"></td>\r\n				 <td>\r\n                 </td><td class="tat"></td>\r\n             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				 <td>\r\n                 <a href="{Link3}"><img src="{Paso3}" style="width:150px; height:150px;" /></a></td></tr></table>\r\n   <br />\r\n<p><span style="font-weight: 400;">Cordialmente,</span></p>\r\n<p>&nbsp;</p></div>\r\n', 'Responsabilidad Civil Picup');
/*!40000 ALTER TABLE `maestro_correoautomatico` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_correosinternos
CREATE TABLE IF NOT EXISTS `maestro_correosinternos` (
  `indice` int(11) DEFAULT NULL,
  `Correo` varchar(150) DEFAULT NULL,
  `CodigoEmpresa` varchar(350) DEFAULT NULL,
  KEY `indice` (`indice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_correosinternos: ~6 rows (approximately)
DELETE FROM `maestro_correosinternos`;
/*!40000 ALTER TABLE `maestro_correosinternos` DISABLE KEYS */;
INSERT INTO `maestro_correosinternos` (`indice`, `Correo`, `CodigoEmpresa`) VALUES
	(NULL, 'erik.castaneda@unitypromotores.com', 'Codisa'),
	(NULL, 'erik.castaneda@unitypromotores.com', 'Telus'),
	(NULL, 'erik.castaneda@unitypromotores.com', 'Fogel'),
	(NULL, 'erik.castaneda@unitypromotores.com', 'Capgemini'),
	(NULL, 'erik.castaneda@unitypromotores.com', 'CEG'),
	(NULL, 'erik.castaneda@unitypromotores.com', 'Citibank');
/*!40000 ALTER TABLE `maestro_correosinternos` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_ejecutivos
CREATE TABLE IF NOT EXISTS `maestro_ejecutivos` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(350) NOT NULL DEFAULT '0',
  `Correo` varchar(150) NOT NULL DEFAULT '0',
  `CodigoEmpresa` varchar(350) NOT NULL DEFAULT '0',
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nombre`,`Correo`,`CodigoEmpresa`),
  KEY `indice` (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_ejecutivos: ~5 rows (approximately)
DELETE FROM `maestro_ejecutivos`;
/*!40000 ALTER TABLE `maestro_ejecutivos` DISABLE KEYS */;
INSERT INTO `maestro_ejecutivos` (`indice`, `Nombre`, `Correo`, `CodigoEmpresa`, `Estado`) VALUES
	(2, 'Josué Hernández', 'josue.hernandez@unitypromotores.com', '0', b'1'),
	(3, 'Luis Lugo', 'luis.lugo@unitypromotores.com', '0', b'1'),
	(4, 'Oscar Bethancourt', 'oscar.bethancourt@unitypromotores.com', '0', b'1'),
	(5, 'Paola Alvarado', 'paola.alvarado@unitypromotores.com', '0', b'1'),
	(1, 'Silvia de González', 'silvia.gonzalez@unitypromotores.com', '0', b'1');
/*!40000 ALTER TABLE `maestro_ejecutivos` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_link_externo
CREATE TABLE IF NOT EXISTS `maestro_link_externo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Link` varchar(800) DEFAULT '0',
  `CodigoEmpresa` varchar(300) DEFAULT '0',
  `descripcion` varchar(800) DEFAULT '0',
  KEY `indice` (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_link_externo: ~96 rows (approximately)
DELETE FROM `maestro_link_externo`;
/*!40000 ALTER TABLE `maestro_link_externo` DISABLE KEYS */;
INSERT INTO `maestro_link_externo` (`indice`, `Link`, `CodigoEmpresa`, `descripcion`) VALUES
	(1, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas.aspx', 'Codisa', 'Link1'),
	(2, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'Codisa', 'Paso1'),
	(3, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'Codisa', 'Paso2'),
	(4, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'Codisa', 'Paso3'),
	(5, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'Codisa', 'Paso11'),
	(6, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'Codisa', 'Paso22'),
	(7, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'Codisa', 'Paso33'),
	(8, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'Codisa', 'Link2'),
	(9, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'Codisa', 'Link3'),
	(10, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt1.aspx', 'Codisa', 'Link4'),
	(11, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt2.aspx', 'Codisa', 'Link5'),
	(12, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'Codisa', 'Paso4'),
	(13, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'Codisa', 'Paso44'),
	(14, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt3.aspx', 'Codisa', 'Link6'),
	(15, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt4.aspx', 'Codisa', 'Link7'),
	(16, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas6.aspx', 'Citibank', 'Link1'),
	(17, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'Citibank', 'Paso1'),
	(18, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'Citibank', 'Paso2'),
	(19, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'Citibank', 'Paso3'),
	(20, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'Citibank', 'Paso11'),
	(21, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'Citibank', 'Paso22'),
	(22, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'Citibank', 'Paso33'),
	(23, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'Citibank', 'Link2'),
	(24, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'Citibank', 'Link3'),
	(25, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt21.aspx', 'Citibank', 'Link4'),
	(26, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt22.aspx', 'Citibank', 'Link5'),
	(27, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'Citibank', 'Paso4'),
	(28, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'Citibank', 'Paso44'),
	(29, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt23.aspx', 'Citibank', 'Link6'),
	(30, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt24.aspx', 'Citibank', 'Link7'),
	(31, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas5.aspx', 'CEG', 'Link1'),
	(32, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'CEG', 'Paso1'),
	(33, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'CEG', 'Paso2'),
	(34, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'CEG', 'Paso3'),
	(35, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'CEG', 'Paso11'),
	(36, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'CEG', 'Paso22'),
	(37, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'CEG', 'Paso33'),
	(38, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'CEG', 'Link2'),
	(39, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'CEG', 'Link3'),
	(40, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt17.aspx', 'CEG', 'Link4'),
	(41, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt18.aspx', 'CEG', 'Link5'),
	(42, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'CEG', 'Paso4'),
	(43, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'CEG', 'Paso44'),
	(44, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt19.aspx', 'CEG', 'Link6'),
	(45, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt20.aspx', 'CEG', 'Link7'),
	(46, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas4.aspx', 'Capgemini', 'Link1'),
	(47, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'Capgemini', 'Paso1'),
	(48, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'Capgemini', 'Paso2'),
	(49, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'Capgemini', 'Paso3'),
	(50, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'Capgemini', 'Paso11'),
	(51, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'Capgemini', 'Paso22'),
	(52, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'Capgemini', 'Paso33'),
	(53, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'Capgemini', 'Link2'),
	(54, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'Capgemini', 'Link3'),
	(55, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt13.aspx', 'Capgemini', 'Link4'),
	(56, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt14.aspx', 'Capgemini', 'Link5'),
	(57, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'Capgemini', 'Paso4'),
	(58, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'Capgemini', 'Paso44'),
	(59, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt15.aspx', 'Capgemini', 'Link6'),
	(60, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt16.aspx', 'Capgemini', 'Link7'),
	(61, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas3.aspx', 'Fogel', 'Link1'),
	(62, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'Fogel', 'Paso1'),
	(63, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'Fogel', 'Paso2'),
	(64, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'Fogel', 'Paso3'),
	(65, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'Fogel', 'Paso11'),
	(66, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'Fogel', 'Paso22'),
	(67, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'Fogel', 'Paso33'),
	(68, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'Fogel', 'Link2'),
	(69, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'Fogel', 'Link3'),
	(70, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt9.aspx', 'Fogel', 'Link4'),
	(71, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt10.aspx', 'Fogel', 'Link5'),
	(72, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'Fogel', 'Paso4'),
	(73, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'Fogel', 'Paso44'),
	(74, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt11.aspx', 'Fogel', 'Link6'),
	(75, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt12.aspx', 'Fogel', 'Link7'),
	(76, 'http://testcotizador.unitypromotores.com/Cotizador/PeticionesExternas2.aspx', 'Telus', 'Link1'),
	(77, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso1.png', 'Telus', 'Paso1'),
	(78, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso2.png', 'Telus', 'Paso2'),
	(79, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso3.png', 'Telus', 'Paso3'),
	(80, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso11.png', 'Telus', 'Paso11'),
	(81, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso22.png', 'Telus', 'Paso22'),
	(82, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso33.png', 'Telus', 'Paso33'),
	(83, 'http://testcotizador.unitypromotores.com/Cotizador/Paso2.aspx', 'Telus', 'Link2'),
	(84, 'http://testcotizador.unitypromotores.com/Cotizador/Paso3.aspx', 'Telus', 'Link3'),
	(85, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt5.aspx', 'Telus', 'Link4'),
	(86, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt6.aspx', 'Telus', 'Link5'),
	(87, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso4.png', 'Telus', 'Paso4'),
	(88, 'http://testcotizador.unitypromotores.com/Cotizador/imagenes/Paso44.png', 'Telus', 'Paso44'),
	(89, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt7.aspx', 'Telus', 'Link6'),
	(90, 'http://testcotizador.unitypromotores.com/Cotizador/Rpt8.aspx', 'Telus', 'Link7'),
	(91, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario1.aspx', 'Codisa', 'Redireccion'),
	(92, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario2.aspx', 'Telus', 'Redireccion'),
	(93, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario3.aspx', 'Fogel', 'Redireccion'),
	(94, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario4.aspx', 'Capgemini', 'Redireccion'),
	(95, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario5.aspx', 'CEG', 'Redireccion'),
	(96, 'http://testcotizador.unitypromotores.com/Cotizador/Formulario6.aspx', 'Citibank', 'Redireccion');
/*!40000 ALTER TABLE `maestro_link_externo` ENABLE KEYS */;


-- Dumping structure for table catalogo.maestro_reglasnegocio
CREATE TABLE IF NOT EXISTS `maestro_reglasnegocio` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoEmpresa` varchar(50) NOT NULL DEFAULT '0',
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
  `MotoDanosATercerosBase` decimal(10,2) DEFAULT NULL,
  `MotoPorcentaje_DeducibleDañosYAccidentes` decimal(10,2) DEFAULT NULL,
  `MotoSumaLimiteParaCalculo` decimal(10,2) DEFAULT NULL,
  `MotoPorcentaje_DeducibleRobo` decimal(10,2) DEFAULT NULL,
  `MotoPorcentaje_Cobro` decimal(10,2) DEFAULT NULL,
  `MotoCobro_PorServicio` decimal(10,2) DEFAULT NULL,
  `MotoPorcentaje_PorServicio` decimal(10,2) DEFAULT NULL,
  `PrimaNetaPickUpRC` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `codigo` (`CodigoEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.maestro_reglasnegocio: ~6 rows (approximately)
DELETE FROM `maestro_reglasnegocio`;
/*!40000 ALTER TABLE `maestro_reglasnegocio` DISABLE KEYS */;
INSERT INTO `maestro_reglasnegocio` (`indice`, `CodigoEmpresa`, `base`, `suma_asegurada_limite`, `porcentaje_menor_100`, `porcentaje_mayor_100`, `costo`, `robo_parcial`, `Menores_desde_16`, `Menores_desde_18`, `Exceso_RC`, `gastos_emision`, `asisto`, `iva`, `Exceso_RC_ElevacionDeCobertura`, `Exceso_RC_Base`, `PrimaNetaRC`, `MenorNombradoRC`, `PorcentajeResponsabilidadCivil`, `MotoDanosATercerosBase`, `MotoPorcentaje_DeducibleDañosYAccidentes`, `MotoSumaLimiteParaCalculo`, `MotoPorcentaje_DeducibleRobo`, `MotoPorcentaje_Cobro`, `MotoCobro_PorServicio`, `MotoPorcentaje_PorServicio`, `PrimaNetaPickUpRC`, `PrimaNetaMotoRC`) VALUES
	(1, 'Codisa', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00),
	(2, 'Telus', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00),
	(3, 'Fogel', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00),
	(4, 'Capgemini', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00),
	(5, 'CEG', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00),
	(6, 'Citibank', 1000.00, 100000.00, 2.500, 2.000, 500.00, 267.54, 500.00, 1000.00, 200.00, 0.05, 145.45, 0.12, 250000.00, 800000.00, 900.00, NULL, 5.00, 300000.00, 0.05, 700.00, 0.02, 0.05, 250.00, 7.00, 1100.00, 500.00);
/*!40000 ALTER TABLE `maestro_reglasnegocio` ENABLE KEYS */;


-- Dumping structure for table catalogo.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.marca: ~191 rows (approximately)
DELETE FROM `marca`;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`indice`, `Descripcion`) VALUES
	(873, 'ACCU'),
	(784, 'ACURA'),
	(831, 'ADMIRAL'),
	(877, 'ALFA'),
	(875, 'ALFA ROMEO'),
	(878, 'AMG'),
	(879, 'APOLO'),
	(832, 'ASIA'),
	(857, 'ASIA HERO'),
	(880, 'ASTA'),
	(785, 'ASTON MARTIN'),
	(786, 'AUDI'),
	(867, 'AUTOBUS'),
	(881, 'AVANTI'),
	(821, 'AZTEC'),
	(823, 'BAJAJ'),
	(869, 'BASHAN'),
	(861, 'BLUE BIRD'),
	(774, 'BMW'),
	(932, 'BMX'),
	(845, 'BOBCAT'),
	(882, 'BUICK'),
	(839, 'BUTLER'),
	(941, 'BYD'),
	(883, 'CADILLAC'),
	(952, 'CAN-AM ROADSTER'),
	(864, 'CASE'),
	(826, 'CATERPILLAR'),
	(876, 'CHANA'),
	(924, 'CHANGAN'),
	(919, 'CHEROKEE'),
	(835, 'CHERRY'),
	(777, 'CHEVROLET'),
	(787, 'CHRYSLER'),
	(813, 'CITROEN'),
	(833, 'CMC'),
	(808, 'DAEWOO'),
	(809, 'DAIHATSU'),
	(950, 'DAINLER BENZ'),
	(828, 'DATSUN'),
	(946, 'DFSK'),
	(850, 'DINA'),
	(788, 'DODGE'),
	(859, 'DONGFENG'),
	(960, 'DORSEY'),
	(942, 'DUCATI'),
	(865, 'DUMPER'),
	(884, 'EAGLE'),
	(885, 'EIK'),
	(870, 'ELGIN PELICAN'),
	(886, 'EZGO'),
	(945, 'FAW'),
	(789, 'FERRARI'),
	(816, 'FIAT'),
	(842, 'FLOW BOY'),
	(779, 'FORD'),
	(887, 'FREEDOM'),
	(814, 'FREIGHTLINER'),
	(836, 'FRUEHAUF'),
	(863, 'FUTIAN'),
	(888, 'GEELY'),
	(862, 'GENESIS'),
	(806, 'GEO'),
	(790, 'GMC'),
	(921, 'GREAT DANE'),
	(889, 'GREAT WALL'),
	(890, 'HAFEI'),
	(953, 'HAOJUE'),
	(938, 'HARLEY'),
	(891, 'HARLEY-DAVIDSON'),
	(817, 'HARTFORD'),
	(840, 'HAUF'),
	(931, 'HERO'),
	(822, 'HINO'),
	(854, 'HOBBS'),
	(838, 'HOMEMADE'),
	(962, 'HONDA'),
	(892, 'HUMMER'),
	(951, 'HUSQVARNA'),
	(776, 'HYUNDAI'),
	(791, 'INFINITI'),
	(927, 'INTERNACIONAL'),
	(819, 'INTERNATIONAL'),
	(792, 'ISUZU'),
	(926, 'ITALIKA'),
	(893, 'IVECO'),
	(922, 'JAC'),
	(894, 'JAGUAR'),
	(849, 'JEEP'),
	(851, 'JIALIGN'),
	(852, 'JIALING'),
	(958, 'JIMBEI'),
	(856, 'JMC'),
	(955, 'JOHN DEERE'),
	(871, 'JOHNSTON'),
	(930, 'KAISER'),
	(948, 'KARI KOOL'),
	(858, 'KAWASAKI'),
	(848, 'KENWORTH'),
	(793, 'KIA'),
	(895, 'KINLON'),
	(846, 'KOMATSU'),
	(896, 'KORANDO'),
	(866, 'KYMCO'),
	(794, 'LAND ROVER'),
	(795, 'LEXUS'),
	(860, 'LIFAN'),
	(872, 'LINMAX'),
	(897, 'LIONCEL'),
	(855, 'LML'),
	(956, 'LONCIN'),
	(937, 'LOW BOY'),
	(818, 'MACK'),
	(847, 'MAGIRUZ'),
	(923, 'MAHINDRA'),
	(829, 'MARCK'),
	(796, 'MASERATI'),
	(954, 'MASSEY'),
	(780, 'MAZDA'),
	(797, 'MERCEDES'),
	(827, 'MERCEDES BENZ'),
	(899, 'MERCURY'),
	(944, 'METAGRO'),
	(837, 'MILWAUKEE'),
	(798, 'MINI'),
	(901, 'MINI COOPER'),
	(781, 'MITSUBISHI'),
	(940, 'MORGAN PLUS'),
	(834, 'NAVISTAR'),
	(961, 'NC700XD'),
	(773, 'NISSAN'),
	(933, 'OLDSMOBILE'),
	(903, 'OPEL'),
	(812, 'PENDIENTE'),
	(905, 'PETER'),
	(907, 'PETERBILT'),
	(782, 'PEUGEOT'),
	(898, 'PIPA'),
	(900, 'PIPATANQUE'),
	(810, 'PLYMOUTH'),
	(943, 'POLARIS'),
	(799, 'PONTIAC'),
	(800, 'PORSCHE'),
	(902, 'RANGE ROVER'),
	(807, 'RENAULT'),
	(843, 'RETESA'),
	(959, 'ROBECA'),
	(904, 'ROVER'),
	(906, 'RSM'),
	(949, 'SACHS MOPEDS'),
	(868, 'SANYANG'),
	(908, 'SATURN'),
	(929, 'SCHWING'),
	(801, 'SCION'),
	(778, 'SEAT'),
	(874, 'SHINERAY'),
	(909, 'SINSKI'),
	(910, 'SKODA'),
	(957, 'SKYGO'),
	(911, 'SSANG YONG'),
	(783, 'SSANGYONG'),
	(928, 'STERLING'),
	(934, 'STEYR PUCH'),
	(939, 'STRICK'),
	(802, 'SUBARU'),
	(925, 'SUKIDA'),
	(803, 'SUZUKI'),
	(936, 'THEURER'),
	(935, 'TITAN'),
	(775, 'TOYOTA'),
	(841, 'TRAILMOBILE'),
	(912, 'TRIUMPH'),
	(913, 'UD NISSAN'),
	(914, 'UD TRUCKS'),
	(825, 'UNITED MOTORS'),
	(815, 'VENTO'),
	(824, 'VESPA'),
	(853, 'VIKING'),
	(915, 'VILLAGER 8'),
	(804, 'VOLKSWAGEN'),
	(805, 'VOLVO'),
	(820, 'WABASH'),
	(916, 'WHITE'),
	(920, 'WHITE GMC'),
	(917, 'WULING'),
	(947, 'XRT 1550 SE'),
	(811, 'YAMAHA'),
	(918, 'YUMBO'),
	(830, 'ZUKYAMA'),
	(1029, 'ZUSUKI'),
	(844, 'ZX');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;


-- Dumping structure for table catalogo.modelo
CREATE TABLE IF NOT EXISTS `modelo` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.modelo: ~16 rows (approximately)
DELETE FROM `modelo`;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` (`indice`, `Descripcion`) VALUES
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
  `Importancia` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`indice`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.tipodevehiculo: ~4 rows (approximately)
DELETE FROM `tipodevehiculo`;
/*!40000 ALTER TABLE `tipodevehiculo` DISABLE KEYS */;
INSERT INTO `tipodevehiculo` (`indice`, `Descripcion`, `Importancia`) VALUES
	(5, 'Automóvil', NULL),
	(7, 'Motocicleta', 'No cambiar indice ni descripcion, alta.'),
	(26, 'Camioneta', NULL),
	(41, 'Pickup', 'No cambiar indice ni descripcion, alta.');
/*!40000 ALTER TABLE `tipodevehiculo` ENABLE KEYS */;


-- Dumping structure for table catalogo.trans_correosenviados
CREATE TABLE IF NOT EXISTS `trans_correosenviados` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(500) DEFAULT '0',
  `Apellidos` varchar(800) DEFAULT '0',
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
  `Paso1` bit(1) DEFAULT NULL,
  `Paso2` bit(1) DEFAULT NULL,
  `Paso3` bit(1) DEFAULT NULL,
  `Nit` varchar(150) DEFAULT NULL,
  `DPI` varchar(150) DEFAULT NULL,
  `Direccion` varchar(800) DEFAULT NULL,
  `Zona` varchar(50) DEFAULT NULL,
  `Municipio` varchar(550) DEFAULT NULL,
  `ingreso` varchar(50) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `FechaInicio` datetime DEFAULT NULL,
  `prima` decimal(10,2) DEFAULT NULL,
  `passaporte` varchar(250) DEFAULT NULL,
  `nacimiento` varchar(250) DEFAULT NULL,
  `mensajetipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.trans_correosenviados: ~46 rows (approximately)
DELETE FROM `trans_correosenviados`;
/*!40000 ALTER TABLE `trans_correosenviados` DISABLE KEYS */;
INSERT INTO `trans_correosenviados` (`indice`, `Nombre`, `Apellidos`, `Correo`, `TipoDeVehiculo`, `Linea`, `Marca`, `Telefono`, `Modelo`, `SumaAsegurada`, `Fecha`, `TipoSeguro`, `contactar`, `CodigoEmpresa`, `ComoContactar`, `Paso1`, `Paso2`, `Paso3`, `Nit`, `DPI`, `Direccion`, `Zona`, `Municipio`, `ingreso`, `status`, `FechaInicio`, `prima`, `passaporte`, `nacimiento`, `mensajetipo`) VALUES
	(234, 'Ana Maria', 'Gonzales Gomez', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'whit', 'ACCU', '65654654', '2001', 50000.00, '2016-09-14 10:26:38', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2618.00, NULL, '2016-09-14', 1),
	(235, 'Sara Tomasa', 'Quintanilla Gomez', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'tec', 'ACCU', '65465465', '2001', 50000.00, '2016-09-14 10:57:05', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2618.00, NULL, '2016-09-14', 1),
	(236, 'Matias Donaldo', 'Cruz Bolaños', 'erik.castaneda@unityseguros.onmicrosoft.com', 'Automóvil', 'Verde', 'ACCU', '65654654', '2001', 55000.00, '2016-09-14 11:03:30', 'Seguro Completo', 'erik.castaneda@unityseguros.onmicrosoft.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2765.00, NULL, '2016-09-14', 1),
	(237, 'Carlos Morales', 'Cartejo Minu', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'blanca', 'ACCU', '65654654', '2001', 50000.00, '2016-09-14 11:07:57', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2618.00, NULL, '2016-09-14', 1),
	(238, 'Maria Candelaria', 'Gomaez Bolaños', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Gris', 'ACCU', '65465465', '2001', 50000.00, '2016-09-14 11:15:54', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2618.00, NULL, '2016-09-14', 1),
	(239, 'Manuel Castro', 'Ponce Leon', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Gris', 'ACCU', '65465465', '2001', 150000.00, '2016-09-14 11:21:35', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 4676.00, NULL, '2016-09-14', 1),
	(240, 'Jorge Mario', 'Fu Lo', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'Beis', 'ACCU', '65465465', '2001', 35000.00, '2016-09-14 11:24:05', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2352.00, NULL, '2016-09-14', 7),
	(241, 'Juan Manuel', 'Alverz Veliz', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'Directa', 'ACCU', '98798465', '2001', 0.00, '2016-09-14 11:25:35', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-05', 8),
	(242, 'Francisco Randolfo', 'Gomez Monzon', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Blanca', 'ACCU', '65465465', '2001', 54500.00, '2016-09-14 11:27:53', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2750.30, NULL, '2016-09-14', 1),
	(243, 'Manolo Andrade', 'Dias Duran', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Golden', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 11:29:03', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(244, 'Mmiriam Dolores', 'Caceres Dominguez', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Blanca', 'ACCU', '65465465', '2001', 5500.00, '2016-09-14 11:37:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1736.00, NULL, '2016-09-14', 1),
	(245, 'Hector Manuel', 'Aparicio Gutierrez', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'LX', 'ACCU', '65465465', '2001', 225000.00, '2016-09-14 11:41:53', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 6440.00, NULL, '2016-09-06', 1),
	(246, 'Maria Antonieta', 'De las Nieves', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'LL', 'ACCU', '65465465', '2001', 235000.00, '2016-09-14 11:43:23', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 6675.20, NULL, '2016-09-14', 1),
	(247, 'Jorge Alejandro', 'Tunez Cobar', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'XL', 'ACCU', '65465465', '2001', 75000.00, '2016-09-14 11:45:54', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 4704.00, NULL, '2016-09-13', 7),
	(248, 'Mariana Ana', 'Tortola Garrido', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'MM', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 11:47:39', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Telus', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-13', 8),
	(249, 'Maria Cristina', 'Campollo Rodriguez', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'XS', 'ACCU', '65465465', '2001', 75000.00, '2016-09-14 11:55:29', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Fogel', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 3353.00, NULL, '2016-09-06', 1),
	(250, 'Luis Ruben', 'Recinos Caballeros', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'SS', 'ACCU', '98798498', '2001', 135000.00, '2016-09-14 11:57:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Fogel', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 4323.20, NULL, '2016-09-06', 1),
	(251, 'Luisa Monica', 'Vallesteros Santizo', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'SX', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 11:59:15', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Fogel', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-06', 2),
	(252, 'Mauricio Fernando', 'Castresana Galindo', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'TT', 'ACCU', '65465465', '2001', 22500.00, '2016-09-14 12:02:05', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Fogel', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1617.00, NULL, '2016-09-06', 7),
	(253, 'Carlos Heniao', 'Hernandez Bustamante', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'TY', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 12:04:05', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Fogel', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-06', 8),
	(254, 'Sara Beatriz', 'Quiñonez Candelario', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'PP', 'ACCU', '65465465', '2001', 85000.00, '2016-09-14 12:10:39', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 3647.00, NULL, '2016-09-14', 1),
	(255, 'Freddy Gabriel', 'Anderson Lars', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'TY', 'ACCU', '65465465', '2001', 245000.00, '2016-09-14 12:12:57', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 6910.40, NULL, '2016-09-14', 1),
	(256, 'Mirna Mercedez', 'Carrillo Reynosa', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'UY', 'ACCU', '98798798', '2001', 0.00, '2016-09-14 12:14:24', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(257, 'Luis Fernando', 'Soto Mayor', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'BG', 'ACCU', '98798798', '2001', 0.00, '2016-09-14 12:16:36', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(258, 'Benedicto Quintero', 'Ramos Garcia', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'PO', 'ACCU', '65465465', '2001', 45500.00, '2016-09-14 12:18:13', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2969.40, NULL, '2016-09-14', 7),
	(259, 'Ruben Antonio', 'Baladez Contreras', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'LK', 'ACCU', '98798798', '2001', 0.00, '2016-09-14 12:19:57', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(260, 'Oliverio Neftali', 'Casasola Barrientos', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'er', 'ACCU', '65465465', '2001', 25500.00, '2016-09-14 12:22:00', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1793.40, NULL, '2016-09-14', 7),
	(261, 'Sergio Rolando', 'Brenes Arias', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'tw', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 12:23:24', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Capgemini', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-14', 8),
	(262, 'Leonardo Felipe', 'Mendizabal Izaguirre', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'TU', 'ACCU', '65465465', '2001', 35500.00, '2016-09-14 12:59:23', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'CEG', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2191.70, NULL, '2016-09-14', 1),
	(263, 'Lucas Martin', 'Acosta Acuña', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'PO', 'ACCU', '65465465', '2001', 165500.00, '2016-09-14 13:01:10', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'CEG', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 5040.56, NULL, '2016-09-14', 1),
	(264, 'Joaquin Emmanuel', 'Bonilla Castellanos', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'JU', 'ACCU', '87987987', '2001', 0.00, '2016-09-14 13:03:12', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'CEG', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(265, 'Hugo Ricardo', 'Guardiola Granados', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'OI', 'ACCU', '65465465', '2001', 25750.00, '2016-09-14 13:05:49', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'CEG', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1808.10, NULL, '2016-09-14', 7),
	(266, 'Bruno Ivan', 'Leal Catalan', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'OR', 'ACCU', '98798798', '2001', 0.00, '2016-09-14 13:07:47', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'CEG', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-14', 8),
	(267, 'Cesar Cristobal', 'Mendoza Montoya', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'PR', 'ACCU', '95654654', '2001', 45800.00, '2016-09-14 13:11:05', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Citibank', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 135800.00, NULL, '2016-09-14', 1),
	(268, 'Josue Franco', 'Ledezma Lara', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'UT', 'ACCU', '54654654', '2001', 145000.00, '2016-09-14 13:13:33', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Citibank', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 342188.00, NULL, '2016-09-14', 1),
	(269, 'Kymberli Dylan', 'Iriarte Hidalgo', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'GG', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 13:15:28', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Citibank', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-14', 2),
	(270, 'Oscar Valentin', 'Guerra Lima', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'DFX', 'ACCU', '32165465', '2001', 34500.00, '2016-09-14 13:17:04', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Citibank', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2322.60, NULL, '2016-09-14', 7),
	(271, 'Giego Gonzalo', 'Infante Jauregui', 'erik.casaneda@unitypromotores.com', 'Motocicleta', 'ss', 'ACCU', '65465465', '2001', 0.00, '2016-09-14 13:18:40', 'Responsabilidad Civil', 'erik.casaneda@unitypromotores.com', 'Citibank', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 588.00, NULL, '2016-09-14', 8),
	(272, 'Ermenegildo Eustaquio', 'Pep Castro', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Murcielago', 'FERRARI', '65465465', '2001', 150000.00, '2016-09-20 10:49:51', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', b'1', b'1', '789136431', '789136431', '14 av 1-1 Colonia Lourdes', '7', 'Guatemala', 'H764T844', NULL, '2016-09-20 00:00:00', 4676.00, '', '1980-06-15', 1),
	(273, 'Jorge Mario', 'Morales Bustamante', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Vampito', 'FERRARI', '65465465', '2001', 45000.00, '2016-09-20 12:05:10', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', b'1', b'1', NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 133448.00, NULL, '1980-06-03', 1),
	(274, 'Carñps Fernando', 'Colindres Mendez', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 14:30:37', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1456.50, NULL, '1982-05-01', 3),
	(275, 'Juan Antonio', 'Lara Chajon', 'erik.castaneda@unitypromotores.com', 'Motocicleta', 'kagiba', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 14:48:41', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750.90, NULL, '1982-06-05', 8),
	(276, 'Vehiculo Auto', 'Arriba CienMil', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'XL', 'ACCU', '65465465', '2001', 150000.00, '2016-09-20 15:17:51', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 4082.90, NULL, '2016-09-01', 1),
	(277, 'Vehiculo Auto', 'Abajo de CienMil', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'Azul', 'ACCU', '65465465', '2001', 50000.00, '2016-09-20 15:19:48', 'Seguro Completo', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 2122.90, NULL, '2016-09-06', 1),
	(278, 'Vehiculo Auto', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Automóvil', 'White', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 15:21:43', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1221.30, NULL, '2016-09-06', 2),
	(279, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 15:27:27', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1456.50, NULL, '2016-09-06', 3),
	(280, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 15:40:56', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1456.50, NULL, '2016-09-13', 3),
	(281, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'a', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 15:41:52', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1456.50, NULL, '2016-09-13', 3),
	(282, 'Automovil Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 15:58:42', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1456.50, NULL, '2016-09-06', 3),
	(283, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 16:05:11', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1456.50, NULL, '2016-09-06', 3),
	(284, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 16:07:26', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1456.50, NULL, '2016-09-06', 3),
	(285, 'Vehiculo Pickup', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Pickup', 'XL', 'ACCU', '65465465', '2001', 0.00, '2016-09-20 16:13:59', 'Responsabilidad Civil', 'erik.castaneda@unitypromotores.com', 'Codisa', 'Por Telefono - Inmediatamente', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'H764T844', NULL, NULL, 1456.50, NULL, '2016-09-06', 3);
/*!40000 ALTER TABLE `trans_correosenviados` ENABLE KEYS */;


-- Dumping structure for table catalogo.trans_detallecotizaciones
CREATE TABLE IF NOT EXISTS `trans_detallecotizaciones` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `Agente` varchar(300) DEFAULT '0',
  `idCotizacionSistema` int(11) DEFAULT '0',
  `FechaRecibido` datetime DEFAULT NULL,
  `FechaAtentido` datetime DEFAULT NULL,
  `FechaCerrado` datetime DEFAULT NULL,
  `HoraPactada` varchar(150) DEFAULT '0',
  `CumplimientoDeContacto` varchar(150) DEFAULT '0',
  `Fecha` datetime DEFAULT NULL,
  KEY `indice` (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.trans_detallecotizaciones: ~152 rows (approximately)
DELETE FROM `trans_detallecotizaciones`;
/*!40000 ALTER TABLE `trans_detallecotizaciones` DISABLE KEYS */;
INSERT INTO `trans_detallecotizaciones` (`indice`, `Agente`, `idCotizacionSistema`, `FechaRecibido`, `FechaAtentido`, `FechaCerrado`, `HoraPactada`, `CumplimientoDeContacto`, `Fecha`) VALUES
	(204, 'Silvia de González', 2, '2016-08-18 21:36:13', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(205, 'Silvia de González', 3, '2016-08-18 21:56:10', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(206, 'Silvia de González', 4, '2016-08-18 22:33:00', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(207, 'Silvia de González', 5, '2016-08-18 22:46:46', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(208, 'Silvia de González', 6, '2016-08-18 22:47:53', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(209, 'Silvia de González', 7, '2016-08-18 22:52:14', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(210, 'Silvia de González', 8, '2016-08-18 22:53:15', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(211, 'Silvia de González', 9, '2016-08-18 22:54:07', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(212, 'Silvia de González', 10, '2016-08-19 15:44:51', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(213, 'Silvia de González', 11, '2016-08-19 15:46:43', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(214, 'Silvia de González', 12, '2016-08-22 11:39:09', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(215, 'Silvia de González', 13, '2016-08-22 11:43:02', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(216, 'Silvia de González', 14, '2016-08-22 11:44:19', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(217, 'Silvia de González', 15, '2016-08-22 11:50:47', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(218, 'Silvia de González', 16, '2016-08-22 12:14:14', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(219, 'Silvia de González', 17, '2016-08-22 13:51:41', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(220, 'Silvia de González', 18, '2016-08-22 13:55:30', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(221, 'Silvia de González', 19, '2016-08-22 13:56:03', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(222, 'Silvia de González', 20, '2016-08-23 09:47:56', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(223, 'Silvia de González', 21, '2016-08-23 13:39:58', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(224, 'Silvia de González', 22, '2016-08-23 13:44:24', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(225, 'Silvia de González', 23, '2016-08-23 14:33:01', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(226, 'Silvia de González', 24, '2016-08-23 14:42:04', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(227, 'Silvia de González', 25, '2016-08-23 14:47:00', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(235, 'Josué Hernández', 26, '2016-08-23 14:49:16', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(236, 'Josué Hernández', 27, '2016-08-23 14:56:39', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(237, 'Josué Hernández', 28, '2016-08-23 14:57:56', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(238, 'Josué Hernández', 29, '2016-08-23 15:07:00', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(239, 'Josué Hernández', 30, '2016-08-23 15:09:46', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(240, 'Josué Hernández', 31, '2016-08-23 15:11:32', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(241, 'Josué Hernández', 32, '2016-08-23 15:13:30', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(242, 'Josué Hernández', 33, '2016-08-23 15:14:25', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(243, 'Josué Hernández', 34, '2016-08-23 15:23:46', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(250, 'Luis Lugo', 35, '2016-08-23 15:45:20', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(251, 'Luis Lugo', 36, '2016-08-23 15:51:31', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(252, 'Luis Lugo', 37, '2016-08-23 15:57:00', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(253, 'Luis Lugo', 38, '2016-08-23 15:57:48', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(254, 'Luis Lugo', 39, '2016-08-23 16:10:01', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(255, 'Luis Lugo', 40, '2016-08-23 16:12:47', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(256, 'Luis Lugo', 41, '2016-08-23 16:13:49', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(257, 'Luis Lugo', 42, '2016-08-23 16:24:22', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(258, 'Luis Lugo', 43, '2016-08-23 16:34:13', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(259, 'Luis Lugo', 44, '2016-08-23 16:36:30', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(260, 'Luis Lugo', 45, '2016-08-23 16:53:43', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(261, 'Luis Lugo', 46, '2016-08-24 08:21:33', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(262, 'Luis Lugo', 47, '2016-08-24 09:08:07', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(263, 'Luis Lugo', 48, '2016-08-24 09:09:33', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(264, 'Luis Lugo', 49, '2016-08-25 08:56:21', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(265, 'Luis Lugo', 50, '2016-08-25 09:45:04', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(266, 'Luis Lugo', 51, '2016-08-25 09:51:28', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(267, 'Luis Lugo', 52, '2016-08-25 09:58:46', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(268, 'Luis Lugo', 53, '2016-08-25 10:20:21', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(269, 'Luis Lugo', 54, '2016-08-26 09:02:56', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(270, 'Luis Lugo', 55, '2016-08-26 09:05:32', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(271, 'Luis Lugo', 56, '2016-08-26 09:07:13', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(272, 'Luis Lugo', 57, '2016-08-26 09:09:06', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(273, 'Luis Lugo', 58, '2016-08-26 09:11:50', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(274, 'Luis Lugo', 59, '2016-08-26 09:13:50', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(275, 'Luis Lugo', 60, '2016-08-26 09:15:49', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(281, 'Oscar Bethancourt', 61, '2016-08-26 09:22:55', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(282, 'Oscar Bethancourt', 62, '2016-08-26 09:28:01', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(283, 'Oscar Bethancourt', 63, '2016-08-26 09:40:26', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(284, 'Oscar Bethancourt', 64, '2016-08-26 09:56:36', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(285, 'Oscar Bethancourt', 65, '2016-08-26 10:10:33', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(286, 'Oscar Bethancourt', 66, '2016-08-26 10:12:26', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(287, 'Oscar Bethancourt', 67, '2016-08-26 10:19:02', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(288, 'Oscar Bethancourt', 68, '2016-08-26 10:23:06', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(289, 'Oscar Bethancourt', 69, '2016-08-26 10:32:12', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(290, 'Oscar Bethancourt', 70, '2016-08-26 10:34:03', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(291, 'Oscar Bethancourt', 71, '2016-08-26 10:43:28', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(292, 'Oscar Bethancourt', 72, '2016-08-26 10:49:56', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(293, 'Oscar Bethancourt', 73, '2016-08-26 10:55:43', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(294, 'Oscar Bethancourt', 74, '2016-08-26 11:00:49', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(295, 'Oscar Bethancourt', 75, '2016-08-26 11:03:02', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(296, 'Oscar Bethancourt', 76, '2016-08-26 11:06:52', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(297, 'Oscar Bethancourt', 77, '2016-08-26 11:12:38', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(298, 'Oscar Bethancourt', 78, '2016-08-26 11:21:43', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(299, 'Oscar Bethancourt', 79, '2016-08-26 11:28:08', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(300, 'Oscar Bethancourt', 80, '2016-08-26 13:58:01', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(301, 'Oscar Bethancourt', 81, '2016-08-26 15:10:35', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(302, 'Oscar Bethancourt', 82, '2016-08-26 15:11:52', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(303, 'Oscar Bethancourt', 83, '2016-08-26 15:32:06', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(304, 'Oscar Bethancourt', 84, '2016-08-26 15:36:26', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(305, 'Oscar Bethancourt', 85, '2016-08-26 15:44:14', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(306, 'Oscar Bethancourt', 86, '2016-08-26 15:51:37', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(307, 'Oscar Bethancourt', 87, '2016-08-26 15:54:37', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(308, 'Oscar Bethancourt', 88, '2016-08-26 16:00:42', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(309, 'Oscar Bethancourt', 89, '2016-08-26 16:06:03', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(310, 'Oscar Bethancourt', 90, '2016-08-26 16:32:15', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(311, 'Oscar Bethancourt', 91, '2016-08-26 17:14:26', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(312, 'Oscar Bethancourt', 92, '2016-08-29 08:19:34', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(313, 'Oscar Bethancourt', 93, '2016-08-29 09:28:02', NULL, NULL, 'Por Chat', '0', '2016-08-31 00:00:00'),
	(314, 'Oscar Bethancourt', 94, '2016-08-29 09:48:32', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(315, 'Oscar Bethancourt', 95, '2016-08-29 09:57:47', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(316, 'Oscar Bethancourt', 96, '2016-08-29 10:05:24', NULL, NULL, 'Por Telefono - 3 PM', '0', '2016-08-31 00:00:00'),
	(317, 'Oscar Bethancourt', 97, '2016-08-29 10:13:43', NULL, NULL, 'Por Chat - 4 PM', '0', '2016-08-31 00:00:00'),
	(318, 'Oscar Bethancourt', 98, '2016-08-29 10:18:40', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(319, 'Oscar Bethancourt', 99, '2016-08-29 11:02:20', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(320, 'Oscar Bethancourt', 100, '2016-08-29 11:34:20', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(344, 'Oscar Bethancourt', 101, '2016-08-29 11:38:04', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(345, 'Oscar Bethancourt', 102, '2016-08-29 12:07:22', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(346, 'Oscar Bethancourt', 103, '2016-08-29 12:12:19', NULL, NULL, 'Por Telefono - 4 PM', '0', '2016-08-31 00:00:00'),
	(347, 'Oscar Bethancourt', 104, '2016-08-29 12:21:53', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(348, 'Oscar Bethancourt', 105, '2016-08-29 12:29:58', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(349, 'Oscar Bethancourt', 106, '2016-08-29 13:29:56', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(350, 'Oscar Bethancourt', 107, '2016-08-29 13:42:01', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(351, 'Oscar Bethancourt', 108, '2016-08-29 14:32:50', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(352, 'Oscar Bethancourt', 109, '2016-08-29 14:40:50', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(353, 'Oscar Bethancourt', 110, '2016-08-29 14:44:28', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(354, 'Oscar Bethancourt', 111, '2016-08-29 14:50:15', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(355, 'Oscar Bethancourt', 112, '2016-08-29 14:55:07', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(356, 'Oscar Bethancourt', 113, '2016-08-29 15:01:35', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(357, 'Oscar Bethancourt', 114, '2016-08-29 15:04:30', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(358, 'Oscar Bethancourt', 115, '2016-08-29 15:04:40', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(359, 'Oscar Bethancourt', 116, '2016-08-29 15:05:36', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(360, 'Oscar Bethancourt', 117, '2016-08-29 15:21:30', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(361, 'Oscar Bethancourt', 118, '2016-08-29 15:32:29', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(362, 'Oscar Bethancourt', 119, '2016-08-29 15:39:54', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(363, 'Oscar Bethancourt', 120, '2016-08-29 15:41:27', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(364, 'Oscar Bethancourt', 121, '2016-08-29 15:42:31', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(365, 'Oscar Bethancourt', 122, '2016-08-29 15:44:54', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(366, 'Oscar Bethancourt', 123, '2016-08-29 15:47:35', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(367, 'Oscar Bethancourt', 124, '2016-08-29 16:03:41', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(368, 'Oscar Bethancourt', 125, '2016-08-29 16:07:12', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(369, 'Oscar Bethancourt', 126, '2016-08-29 16:08:50', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(370, 'Oscar Bethancourt', 127, '2016-08-29 16:09:24', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(371, 'Oscar Bethancourt', 128, '2016-08-29 16:10:58', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(372, 'Oscar Bethancourt', 129, '2016-08-29 16:17:41', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(373, 'Oscar Bethancourt', 130, '2016-08-29 16:27:30', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(374, 'Oscar Bethancourt', 131, '2016-08-29 16:45:51', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(375, 'Oscar Bethancourt', 132, '2016-08-29 16:54:14', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(376, 'Oscar Bethancourt', 133, '2016-08-29 16:54:15', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(377, 'Oscar Bethancourt', 134, '2016-08-30 08:32:06', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(378, 'Oscar Bethancourt', 135, '2016-08-30 09:02:17', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(379, 'Oscar Bethancourt', 136, '2016-08-30 09:04:33', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(380, 'Oscar Bethancourt', 137, '2016-08-30 09:05:03', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(381, 'Oscar Bethancourt', 138, '2016-08-30 09:08:22', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(382, 'Oscar Bethancourt', 139, '2016-08-30 09:08:45', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(383, 'Oscar Bethancourt', 140, '2016-08-30 09:08:56', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(384, 'Oscar Bethancourt', 141, '2016-08-30 09:19:12', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(385, 'Oscar Bethancourt', 142, '2016-08-30 09:24:26', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(386, 'Oscar Bethancourt', 143, '2016-08-30 09:29:44', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(387, 'Oscar Bethancourt', 144, '2016-08-30 09:33:55', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(388, 'Oscar Bethancourt', 145, '2016-08-30 09:37:09', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(389, 'Oscar Bethancourt', 146, '2016-08-30 09:42:39', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(390, 'Oscar Bethancourt', 147, '2016-08-30 15:53:26', NULL, NULL, 'Por Chat - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(391, 'Oscar Bethancourt', 148, '2016-08-30 16:59:20', NULL, NULL, 'Por Telefono - 5 PM', '0', '2016-08-31 00:00:00'),
	(392, 'Oscar Bethancourt', 149, '2016-08-31 10:11:26', NULL, NULL, 'Por Telefono - 9 AM', '0', '2016-08-31 00:00:00'),
	(393, 'Oscar Bethancourt', 150, '2016-08-31 10:26:05', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(394, 'Oscar Bethancourt', 151, '2016-08-31 11:07:57', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(395, 'Oscar Bethancourt', 152, '2016-08-31 11:18:34', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00'),
	(396, 'Oscar Bethancourt', 153, '2016-08-31 11:47:03', NULL, NULL, 'Por Telefono - Inmediatamente', '0', '2016-08-31 00:00:00');
/*!40000 ALTER TABLE `trans_detallecotizaciones` ENABLE KEYS */;


-- Dumping structure for table catalogo.trans_resumencotizaciones
CREATE TABLE IF NOT EXISTS `trans_resumencotizaciones` (
  `indice` int(11) NOT NULL AUTO_INCREMENT,
  `codigoAgente` int(11) NOT NULL DEFAULT '0',
  `agente` varchar(500) DEFAULT '0',
  `asignados` int(11) DEFAULT '0',
  `atentidos` int(11) DEFAULT '0',
  `pendientes` int(11) DEFAULT '0',
  `cerrados` int(11) DEFAULT '0',
  `perdidos` int(11) DEFAULT '0',
  `fueradefecha` int(11) DEFAULT '0',
  KEY `indice` (`indice`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table catalogo.trans_resumencotizaciones: ~5 rows (approximately)
DELETE FROM `trans_resumencotizaciones`;
/*!40000 ALTER TABLE `trans_resumencotizaciones` DISABLE KEYS */;
INSERT INTO `trans_resumencotizaciones` (`indice`, `codigoAgente`, `agente`, `asignados`, `atentidos`, `pendientes`, `cerrados`, `perdidos`, `fueradefecha`) VALUES
	(8, 1, 'Silvia de González', 0, 0, 0, 0, 0, 0),
	(9, 2, 'Josué Hernández', 0, 0, 0, 0, 0, 0),
	(10, 3, 'Luis Lugo', 0, 0, 0, 0, 0, 0),
	(11, 4, 'Oscar Bethancourt', 0, 0, 0, 0, 0, 0),
	(12, 5, 'Paola Alvarado', 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `trans_resumencotizaciones` ENABLE KEYS */;


-- Dumping structure for procedure catalogo.Generacodigo
DELIMITER //
CREATE DEFINER=`cotizador`@`%` PROCEDURE `Generacodigo`()
BEGIN

select concat(  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@lid)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),  substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1) );
 
 
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
