SET NAMES 'utf8mb4' COLLATE 'utf8mb4_spanish_ci';

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `CANJES`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `CANJES` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */;

USE `CANJES`;

--
-- Table structure for table `CANJES_Localidades`
--

DROP TABLE IF EXISTS `CANJES_Localidades`;

CREATE TABLE `CANJES_Localidades` (
  `LocalidadId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `CodigoDTA` char(5) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '00000' COMMENT 'Código de División Territorial Administrativa (DTA). Código de Provincia 1 dígito, Código de Cantón 2 dígitos, Código de Distrito 2 dígitos',
  `Provincia` enum('Alajuela','Cartago','Guanacaste','Heredia','Limón','Puntarenas','San José') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'San José' COMMENT 'Nombre de la provincia',
  `Canton` enum('Abangares','Acosta','Alajuela','Alajuelita','Alvarado','Aserrí','Atenas','Bagaces','Barva','Belén','Buenos Aires','Cañas','Carrillo','Cartago','Corredores','Coto Brus','Curridabat','Desamparados','Dota','El Guarco','Escazú','Esparza','Flores','Garabito','Goicoechea','Golfito','Grecia','Guácimo','Guatuso','Heredia','Hojancha','Jiménez','la Cruz','la Unión','león Cortés Castro','liberia','limón','los Chiles','Matina','Montes de Oca','Montes de Oro','Mora','Moravia','Nandayure','Naranjo','Nicoya','Oreamuno','Orotina','Osa','Palmares','Paraíso','Parrita','Pérez Zeledón','Poás','Pococí','Puntarenas','Puriscal','Quepos','Río Cuarto','San Carlos','San Isidro','San José','San Mateo','San Pablo','San Rafael','San Ramón','Santa Ana','Santa Bárbara','Santa Cruz','Santo Domingo','Sarapiquí','Sarchí','Siquirres','Talamanca','Tarrazú','Tibás','Tilarán','Turrialba','Turrubares','Upala','Vázquez de Coronado','Zarcero') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'San José' COMMENT 'Nombre del cantón',
  `Distrito` enum('Acapulco','Aguabuena','Aguacaliente o San Francisco','Aguas Claras','Aguas Zarcas','Alajuela','Alajuelita','Alfaro','Ángeles','Anselmo llorente','Arancibia','Arenal','Aserrí','Atenas','Bagaces','Bahía Ballena','Bahía Drake','Barbacoas','Barranca','Barrantes','Barú','Barva','Batán','Bebedero','Bejuco','Belén','Belén de Nosarita','Bijagua','Biolley','Bolívar','Bolsón','Boruca','Brasil','Bratsi','Brisas','Brunka','Buenavista','Buenos Aires','Cabo Velas','Cachí','Cahuita','Cajón','Caldera','Calle Blancos','Canalete','Candelaria','Candelarita','Cangrejal','Canoas','Cañas','Cañas Dulces','Caño Negro','Capellades','Carara','Cariari','Carmen','Carmona','Carrandi','Carrillos','Carrizal','Cartagena','Cascajal','Catedral','Cervantes','Chacarita','Chánguena','Chira','Chires','Chirripó','Chomes','Cinco Esquinas','Cipreses','Cirrí Sur','Cóbano','Colima','Colinas','Colón','Colorado','Concepción','Copey','Corralillo','Corredor','Cot','Cote','Coyolar','Cuajiniquil','Cureña','Curridabat','Curubandé','Cutris','Damas','Daniel Flores','Delicias','Desamparaditos','Desamparados','Desmonte','Diriá','Dos Ríos','Duacarí','Dulce Nombre','Dulce Nombre de Jesús','El Amparo','El Cairo','El General','El Mastate','El Roble','El Rosario','El Tejar','Escazú','Escobal','Espíritu Santo','Esquipulas','Filadelfia','Florencia','Florida','Frailes','Garita','Germania','Golfito','Granadilla','Gravilias','Grecia','Grifo Alto','Guácima','Guacimal','Guácimo','Guadalupe','Guadalupe o Arenilla','Guaitil','Guápiles','Guayabo','Guaycará','Gutiérrez Braun','Hacienda Vieja','Hatillo','Heredia','Hojancha','Hospital','Huacas','Ipís','Jacó','Jardín','Jaris','Jesús','Jesús María','Jiménez','Juan Viñas','Katira','la Alegría','la Amistad','la Asunción','la Ceiba','la Colonia','la Cruz','la Cuesta','la Fortuna','la Garita','la Granja','la Isabel','la Palmera','la Ribera','la Suiza','la Tigra','la Trinidad','la Unión','la Virgen','labrador','laguna','las Horquetas','las Juntas','laurel','legua','león Xiii','lepanto','líbano','liberia','limón','limoncito','llano Bonito','llano Grande','llanos de Santa lucía','llanuras del Gaspar','llorente','los Chiles','los Guido','Macacona','Mansión','Manzanillo','Mata de Plátano','Mata Redonda','Matama','Matambú','Matina','Mayorga','Merced','Mercedes','Mercedes Sur','Miramar','Mogote','Monte Romo','Monte Verde','Monterrey','Nacascolo','Naranjito','Naranjo','Nicoya','Nosara','Occidental','Oriental','Orosi','Orotina','Pacayas','Pacuarito','Palmar','Palmares','Palmichal','Palmira','Palmitos','Paquera','Pará','Paracito','Paraíso','Páramo','Parrita','Patalillo','Patarrá','Patio de Agua','Pavas','Pavón','Pavones','Pejibaye','Peñas Blancas','Peralta','Picagres','Piedades','Piedades Norte','Piedades Sur','Piedras Blancas','Piedras Negras','Pilas','Pitahaya','Pital','Pittier','Platanares','Pocora','Pocosol','Porozal','Porvenir','Potrero Cerrado','Potrero Grande','Pozos','Puente de Piedra','Puerto Carrillo','Puerto Cortés','Puerto Jiménez','Puerto Viejo','Puntarenas','Purabá','Purral','Quebrada Grande','Quebrada Honda','Quebradilla','Quepos','Quesada','Quitirrisí','Rancho Redondo','Reventazón','Rincón Sabanilla','Río Azul','Río Blanco','Río Cuarto','Río Jiménez','Río Naranjo','Río Nuevo','Río Segundo','Rita','Rivas','Rodríguez','Rosario','Roxana','Sabalito','Sabana Redonda','Sabanilla','Sabanillas','Salitral','Salitrillos','Sámara','San Andrés','San Antonio','San Carlos','San Cristóbal','San Diego','San Felipe','San Francisco','San Francisco de Dos Ríos','San Gabriel','San Ignacio','San Isidro','San Isidro de El General','San Jerónimo','San Joaquín','San Jorge','San José','San José de la Montaña','San José o Pizote','San Josecito','San Juan','San Juan De Dios','San Juan de Mata','San Juan Grande','San lorenzo','San luis','San Marcos','San Mateo','San Miguel','San Nicolás','San Pablo','San Pedro','San Rafael','San Rafael Abajo','San Rafael Arriba','San Ramón','San Roque','San Sebastián','San Vicente','San Vito','Sánchez','Santa Ana','Santa Bárbara','Santa Cecilia','Santa Cruz','Santa Elena','Santa Eulalia','Santa Isabel','Santa lucía','Santa María','Santa Rita','Santa Rosa','Santa Teresita','Santiago','Santo Domingo','Santo Tomás','Sarapiquí','Sarchí Norte','Sarchí Sur','Sardinal','Savegre','Sierpe','Sierra','Siquirres','Sixaola','Tabarcia','Tacares','Tamarindo','Tambor','Tapesco','Tarbaca','Tárcoles','Tayutic','Telire','Tempate','Tierra Blanca','Tierras Morenas','Tilarán','Tirrases','Tobosi','Toro Amarillo','Tres Equis','Tres Ríos','Tronadora','Tucurrique','Tuis','Tures','Turrialba','Turrúcares','Ulloa','Upala','Uruca','Valle la Estrella','Vara Blanca','Veintisiete de Abril','Venado','Venecia','Volcán','Volio','Vuelta De Jorco','Yolillal','Zapotal','Zapote','Zaragoza','Zarcero') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'San José' COMMENT 'Nombre del distrito',
  `Nombre` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre de la localidad',
  `NombreOficial` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre ofical de la localidad',
  `NombreCompuesto` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre compuesto de la localidad',
  `Comentario` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Comentario sobre la localidad',
  `TipoUrbanidad` enum('Predominantemente Rural','Predominantemente Urbano','Rural','Urbanidad','Urbano') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Urbano' COMMENT 'Tipo de urbanidad',
  `Tipologia` enum('Asentamiento','Barrio','Caserio','Centro','Ciudad','Comunidad Indigena','Condominio','Poblado','Precario','Residencial','Urbanización') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Ciudad' COMMENT 'Tipología',
  `Region` enum('Brunca','Central','Chorotega','Huetar Caribe','Huetar Norte','Pacífico Central') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Central' COMMENT 'Región',
  `Localizacion` enum('GAM','Zona') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'GAM' COMMENT 'Localización',
  `Latitud` DOUBLE NOT NULL DEFAULT 0 COMMENT 'Almacena las coordenadas de latitud de la geolocalización',
  `Longitud` DOUBLE NOT NULL DEFAULT 0 COMMENT 'Almacena las coordenadas de longitud de la geolocalización',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`LocalidadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Clasificaciones de las localidades del INEC';

--
-- Table structure for table `CANJES_Provincias`
--

DROP TABLE IF EXISTS `CANJES_Provincias`;

CREATE TABLE `CANJES_Provincias` (
  `ProvinciaId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Provincia` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre de la provincia',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`ProvinciaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Listas de privincias';

--
-- Table structure for table `CANJES_Cantones`
--

DROP TABLE IF EXISTS `CANJES_Cantones`;

CREATE TABLE `CANJES_Cantones` (
  `CantonId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Canton` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre del cantón',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`CantonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Lista de cantones';

--
-- Table structure for table `CANJES_Distritos`
--

DROP TABLE IF EXISTS `CANJES_Distritos`;

CREATE TABLE `CANJES_Distritos` (
  `DistritoId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Distrito` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre del distrito',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`DistritoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='lista de distritos';

--
-- Table structure for table `CANJES_Personas`
--

DROP TABLE IF EXISTS `CANJES_Personas`;

CREATE TABLE `CANJES_Personas` (
  `Identificador` int(10) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Identificacion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'La identificación de la persona',
  `Nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre de la persona',
  `PrimerApellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primer apellido de la persona',
  `SegundoApellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segundo apellido de la persona',
  `ConocidoComo` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Conocido como',
  `FechaNacimiento` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de nacimiento de la persona',
  `Genero` enum('Masculino','Femenino') COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Género de la persona',
  `EstadoCivil` enum('Soltero (a)','Casado (a)','Divorciado (a)','Unión Libre','Viudo (a)','No aplica','Separado (a)') COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'No aplica' COMMENT 'Estado civil cuando es persona',
  `LocalidadId` smallint(5) unsigned NOT NULL DEFAULT 1 COMMENT 'Llave foránea correspondiente a `LocalidadId` de la tabla `CANJES`.`CANJES_Localidades`',
  `Pais` enum('Albania','Alemania','Andorra','Angola','Antigua y Barbuda','Antillas Holandesas','Argelia','Argentina','Australia','Austria','Bahamas','Barbados','Bélgica','Belice','Benín','Bielorrusia','Bolivia','Bosnia-Herzegovina','Botswana','Brasil','Bulgaria','Burkina Faso','Burundi','Cabo Verde','Camerún','Canadá','Chad','Chile','China','Chipre','Ciudad del Vaticano','Colombia','Comores','Costa de Marfil','Costa Rica','Croacia','Cuba','Dinamarca','Djibouti, Yibuti','Dominica','Dominicana, República','Ecuador','Egipto','El Salvador','Eritrea','Eslovaquia','España','Estados Unidos','Estonia','Etiopía','Federación Rusa','Francia','Gabón','Gambia','Ghana','Granada','Grecia','Groenlandia','Guatemala','Guayana Francesa','Guinea Bissau','Guinea Ecuatorial','Haiti','Honduras','Hungría','Irlanda','Islandia','Islas Marshall','Islas Salomón','Italia','Jamaica','Japón','Kenia','Kiribati','Laos','Lesotho','Letonia','Líbano','Liberia','Libia','Liechtenstein','Lituania','Luxemburgo','Macedonia','Madagascar','Malawi','Malí','Malta','Marruecos','Mauricio','Mauritania','México','Moldavia','Mónaco','Montenegro','Mozambique','Namibia','Nauru','Nicaragua','Nigeria','Niue','Noruega','Nueva Zelanda','Países Bajos, Holanda','Panamá','Papúa-Nueva Guinea','Paraguay','Perú','Polonia','Portugal','Puerto Rico','Reino Unido','República Centroafricana','República Checa','República del Congo','República Democrática del Congo','República Guinea','Ruanda','Rumanía','Samoa','San Marino','San Vincente y Granadinas','Santa Sede, Vaticano, Ciudad del Vaticano','Senegal','Serbia','Seychelles','Sierra Leona','Somalia','Sudáfrica','Sudán','Suecia','Suiza','Surinam','Swazilandia','Taiwan','Tanzania','Togo','Tonga','Túnez','Turquía','Tuvalu','Ucrania','Uganda','Uruguay','Vanuatu','Venezuela','Zambia','Zimbabwe','Finlandia','Filipinas','Israel') COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'País de la persona',
  `Barrio` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Barrio de procedencia o dirección de domicilo',
  `Telefono` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primera opción de Teléfono',
  `Telefono2` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segunda opcipon de Teléfono',
  `Telefono3` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Tercera opción de Teléfono',
  `CorreoElectronico` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primera opción de Correo electrónico',
  `CorreoElectronico2` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segunda opcipon de Correo electrónico',
  `CorreoElectronico3` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Tercera opción de Correo electrónico',
  `Clave` varchar(128) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Clave para validación en los módulos',
  `IntentosFallidos` tinyint(4) unsigned NOT NULL DEFAULT 0 COMMENT 'Intentos fallidos continuos',
  `Condicion` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Condición actual del usuario',
  `Activo` tinyint(1) NOT NULL DEFAULT 1 COMMENT '¿El usuario se encuetra activo? Valores TRUE = Sí, FALSE = No',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`Identificador`),
  UNIQUE KEY `Identificacion` (`Identificacion`),
  KEY `llfCANJES_Personas_LocalidaIdentificaciondes` (`LocalidadId`),
  CONSTRAINT `llfCANJES_Personas_Localidades` FOREIGN KEY (`LocalidadId`) REFERENCES `CANJES`.`CANJES_Localidades` (`LocalidadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de las personas física o jurídica.';

--
-- Table structure for table `CANJES_Permisos`
--

DROP TABLE IF EXISTS `CANJES_Permisos`;

CREATE TABLE `CANJES_Permisos` (
  `PermisoId` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla',
  `Nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre del permiso',
  `Descripcion` text COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Descripción del permiso',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`PermisoId`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Permisos. Son los nombres de las rutinas almacenadas' ROW_FORMAT=DYNAMIC;

--
-- Table structure for table `CANJES_Roles`
--

DROP TABLE IF EXISTS `CANJES_Roles`;

CREATE TABLE `CANJES_Roles` (
  `RolId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Descripcion` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Descripción del rol',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Roles';

--
-- Table structure for table `CANJES_RolesPermisos`
--

DROP TABLE IF EXISTS `CANJES_RolesPermisos`;

CREATE TABLE `CANJES_RolesPermisos` (
  `RolId` smallint(5) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `RolId` en la tabla `CANJES`.`CANJES_Roles`',
  `PermisoId` smallint(5) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `PermisoId` en la tabla `CANJES`.`CANJES_Permisos`',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`RolId`,`PermisoId`),
  KEY `llfCANJES_RolesPermisos_Roles` (`RolId`),
  KEY `llfCANJES_RolesPermisos_Permisos` (`PermisoId`),
  CONSTRAINT `llfCANJES_RolesPermisos_Permisos` FOREIGN KEY (`PermisoId`) REFERENCES `CANJES`.`CANJES_Permisos` (`PermisoId`),
  CONSTRAINT `llfCANJES_RolesPermisos_Roles` FOREIGN KEY (`RolId`) REFERENCES `CANJES`.`CANJES_Roles` (`RolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Roles y permisos';

--
-- Table structure for table `CANJES_RolesPersonas`
--

DROP TABLE IF EXISTS `CANJES_RolesPersonas`;

CREATE TABLE `CANJES_RolesPersonas` (
  `RolId` smallint(5) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `RolId` en la tabla `CANJES`.`CANJES_Roles`',
  `Identificador` int(10) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla `CANJES`.`CANJES_Personas`',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`RolId`,`Identificador`),
  KEY `llfCANJES_RolesPersonas_Roles` (`RolId`),
  KEY `llfCANJES_RolesPersonas_Personas` (`Identificador`),
  CONSTRAINT `llfCANJES_RolesPersonas_Personas` FOREIGN KEY (`Identificador`) REFERENCES `CANJES`.`CANJES_Personas` (`Identificador`),
  CONSTRAINT `llfCANJES_RolesPersonas_Roles` FOREIGN KEY (`RolId`) REFERENCES `CANJES`.`CANJES_Roles` (`RolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Roles y personas';

--
-- Table structure for table `CANJES_Sesiones`
--

DROP TABLE IF EXISTS `CANJES_Sesiones`;

CREATE TABLE `CANJES_Sesiones` (
  `Identificador` int(10) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla `CANJES`.`CANJES_Personas`',
  `Dispositivo` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Identificador del dispositivo desde el que se realiza la conexión',
  `Token` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Ficha o token de la sesión del usuario',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`Identificador`),
  KEY `llfCANJES_Sesiones_Personas` (`Identificador`),
  CONSTRAINT `llfCANJES_Sesiones_Personas` FOREIGN KEY (`Identificador`) REFERENCES `CANJES`.`CANJES_Personas` (`Identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacenamiento de sesiones de usuarios';

--
-- Table structure for table `CANJES_SesionesFallidas`
--

DROP TABLE IF EXISTS `CANJES_SesionesFallidas`;

CREATE TABLE `CANJES_SesionesFallidas` (
  `Identificador` int(10) unsigned DEFAULT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla `CANJES`.`CANJES_Personas`',
  `Dispositivo` varchar(200) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Identificador del dispositivo desde el que se realiza la conexión',
  `FechaYHora` datetime(4) DEFAULT NULL COMMENT 'Fecha y hora de inicio de la sesión'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de CANJES_SesionesFallidas';

--
-- Table structure for table `CANJES_TokenIncorrecto`
--

DROP TABLE IF EXISTS `CANJES_TokenIncorrecto`;

CREATE TABLE `CANJES_TokenIncorrecto` (
  `Identificador` int(10) unsigned DEFAULT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla `CANJES`.`CANJES_Personas`',
  `Dispositivo` varchar(200) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Identificador del dispositivo desde el que se realiza la conexión',
  `Descripcion` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Token modificado',
  `TokenOriginal` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Token almacenado en la tabla de sesiones',
  `FechaYHora` datetime(4) DEFAULT NULL COMMENT 'Fecha y hora del evento',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de CANJES_TokenIncorrecto';

--
-- Table structure for table `CANJES_Productos`
--

DROP TABLE IF EXISTS `CANJES_Productos`;

CREATE TABLE `CANJES_Productos` (
  `ProductosId` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla',
  `Nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre del Productos(Medicamentos)',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`ProductosId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de Productos(Medicamentos)';

--
-- Table structure for table `CANJES_Canjes`
--

DROP TABLE IF EXISTS `CANJES_Canjes`;

CREATE TABLE `CANJES_Canjes` (
  `CanjesId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla',
  `Fecha` datetime(4) NOT NULL DEFAULT current_timestamp(4) COMMENT 'Fecha de registro del canje.',
  `Factura` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Numero de factura',
  `ProductosId` int(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Llave foránea correspondiente a `ProductosId` en la tabla `CANJES`.`CANJES_Productos`',
  `Cantidad` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Cantidad de veces de compra del Productos(Medicamentos)',
  `Compra` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Valida la compra del Productos(Medicamentos)',
  `Canje` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Valida el canje del Productos(Medicamentos)',
  `Autorizacion` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Numero de autorización del canje',
  `Val` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Val',
  `Identificador` int(10) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla `CANJES`.`CANJES_Personas`',
  `Observaciones` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Observaciones sobre el canje',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`CanjesId`),
  KEY `llfCANJES_Canjes_Productos` (`ProductosId`),
  CONSTRAINT `llfCANJES_Canjes_Productos` FOREIGN KEY (`ProductosId`) REFERENCES `CANJES`.`CANJES_Productos` (`ProductosId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  KEY `llfCANJES_Canjes_Personas` (`Identificador`),
  CONSTRAINT `llfCANJES_Canjes_Personas` FOREIGN KEY (`Identificador`) REFERENCES `CANJES`.`CANJES_Personas` (`Identificador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de los Canjes.';

--
-- Table structure for table `CANJES_Clientes`
--

DROP TABLE IF EXISTS `CANJES_Clientes`;

CREATE TABLE `CANJES_Clientes` (
  `ClienteID` int(10) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `Identificacion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'La identificación de la persona',
  `Nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre de la persona',
  `PrimerApellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primer apellido de la persona',
  `SegundoApellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segundo apellido de la persona',
  `ConocidoComo` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Conocido como',
  `FechaNacimiento` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de nacimiento de la persona',
  `Genero` enum('Masculino','Femenino') COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Género de la persona',
  `LocalidadId` smallint(5) unsigned NOT NULL DEFAULT 1 COMMENT 'Llave foránea correspondiente a `LocalidadId` de la tabla `CANJES`.`CANJES_Localidades`',
  `Pais` enum('Albania','Alemania','Andorra','Angola','Antigua y Barbuda','Antillas Holandesas','Argelia','Argentina','Australia','Austria','Bahamas','Barbados','Bélgica','Belice','Benín','Bielorrusia','Bolivia','Bosnia-Herzegovina','Botswana','Brasil','Bulgaria','Burkina Faso','Burundi','Cabo Verde','Camerún','Canadá','Chad','Chile','China','Chipre','Ciudad del Vaticano','Colombia','Comores','Costa de Marfil','Costa Rica','Croacia','Cuba','Dinamarca','Djibouti, Yibuti','Dominica','Dominicana, República','Ecuador','Egipto','El Salvador','Eritrea','Eslovaquia','España','Estados Unidos','Estonia','Etiopía','Federación Rusa','Francia','Gabón','Gambia','Ghana','Granada','Grecia','Groenlandia','Guatemala','Guayana Francesa','Guinea Bissau','Guinea Ecuatorial','Haiti','Honduras','Hungría','Irlanda','Islandia','Islas Marshall','Islas Salomón','Italia','Jamaica','Japón','Kenia','Kiribati','Laos','Lesotho','Letonia','Líbano','Liberia','Libia','Liechtenstein','Lituania','Luxemburgo','Macedonia','Madagascar','Malawi','Malí','Malta','Marruecos','Mauricio','Mauritania','México','Moldavia','Mónaco','Montenegro','Mozambique','Namibia','Nauru','Nicaragua','Nigeria','Niue','Noruega','Nueva Zelanda','Países Bajos, Holanda','Panamá','Papúa-Nueva Guinea','Paraguay','Perú','Polonia','Portugal','Puerto Rico','Reino Unido','República Centroafricana','República Checa','República del Congo','República Democrática del Congo','República Guinea','Ruanda','Rumanía','Samoa','San Marino','San Vincente y Granadinas','Santa Sede, Vaticano, Ciudad del Vaticano','Senegal','Serbia','Seychelles','Sierra Leona','Somalia','Sudáfrica','Sudán','Suecia','Suiza','Surinam','Swazilandia','Taiwan','Tanzania','Togo','Tonga','Túnez','Turquía','Tuvalu','Ucrania','Uganda','Uruguay','Vanuatu','Venezuela','Zambia','Zimbabwe','Finlandia','Filipinas','Israel') COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'País de la persona',
  `Barrio` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Barrio de procedencia o dirección de domicilo',
  `Telefono` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primera opción de Teléfono',
  `Telefono2` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segunda opcipon de Teléfono',
  `Telefono3` char(16) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Tercera opción de Teléfono',
  `CorreoElectronico` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Primera opción de Correo electrónico',
  `CorreoElectronico2` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Segunda opcipon de Correo electrónico',
  `CorreoElectronico3` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Tercera opción de Correo electrónico',
  `Activo` tinyint(1) NOT NULL DEFAULT 1 COMMENT '¿El usuario se encuetra activo? Valores TRUE = Sí, FALSE = No',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`ClienteID`),
  UNIQUE KEY `Identificacion` (`Identificacion`),
  KEY `llfCANJES_Clientes_LocalidaIdentificaciondes` (`LocalidadId`),
  CONSTRAINT `llfCANJES_Clientes_Localidades` FOREIGN KEY (`LocalidadId`) REFERENCES `CANJES_Localidades` (`LocalidadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena los datos de los clientes física o jurídica.';

--
-- Table structure for table `CANJES_Menu`
--
DROP TABLE IF EXISTS `CANJES`.`CANJES_Menu`;

CREATE TABLE `CANJES`.`CANJES_Menu` (
  `MenuId` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria de la tabla',
  `PermisoId` smallint(5) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `PermisoId` en la tabla CANJES.CANJES_Permisos',
  `Nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Nombre del menú',
  `Descripcion` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Descripción del menú',
  `TipoMenu` enum('Módulo','Enlace','Menú','Opción Menú') COLLATE utf8mb4_spanish_ci DEFAULT 'Módulo' COMMENT 'Tipo del menú',
  `Icono` varchar(45) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Icono de la opción del menú',
  `Enlace` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Enlace a pantalla del menú',
  `Padre` smallint(5) unsigned NOT NULL COMMENT 'Llave primaria virtual a la misma tabla (MenuId)',
  `Peso` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Peso del menú',
  `Estado` tinyint(1) NOT NULL DEFAULT 1 COMMENT '¿El menú se encuetra activo? Valores TRUE = Sí, FALSE = No',
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`MenuId`),
  KEY `llfCANJES_Menu_Permisos` (`PermisoId`),
  CONSTRAINT `llfCANJES_Menu_Permisos` FOREIGN KEY (`PermisoId`) REFERENCES `CANJES`.`CANJES_Permisos` (`PermisoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Permisos. Son los nombres de las rutinas almacenadas';

--
-- Table structure for table `CANJES_Notificaciones`
--
DROP TABLE IF EXISTS `CANJES`.`CANJES_Notificaciones`;

CREATE TABLE `CANJES`.`CANJES_Notificaciones` (
  `NotificacionId` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla',
  `Identificador` int(10) unsigned NOT NULL COMMENT 'Llave foránea correspondiente a `Identificador` en la tabla CANJES.CANJES_Personas',
  `Nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Llave foránea correspondiente a `Nombre` en la tabla `SIGU`.`SIGU_Modulos`',
  `Descripcion` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Descripción de la notificación',
  `Estado` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `LastUpdate` datetime(4) NOT NULL DEFAULT current_timestamp(4) ON UPDATE current_timestamp(4) COMMENT 'Fecha de la última actualización de la fila',
  `LastUser` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '-' COMMENT 'Último usuario que modificó la fila',
  PRIMARY KEY (`NotificacionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Notificaciones para el usuario';
