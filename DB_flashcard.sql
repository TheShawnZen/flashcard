-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: flashcard
-- ------------------------------------------------------
-- Server version	8.0.21
CREATE SCHEMA flashcard;
USE flashcard;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `id_etudiant` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mot_passe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  UNIQUE KEY `identifiant` (`identifiant`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant`(id_etudiant,identifiant,mot_passe) 
VALUES (7,'nadia@email.com','123'),(8,'shawn@email.com','123'),(9,'radu@email.com','123'),(10,'theo@email.com','123'),(11,'etudiant@mail.com','666'),(12,'sdfsdf@d','12345678'),(13,'theo_m.langlois@hotmail.frg','bonjourshawn'),(14,'theo_m.langlois@hotmail.fr','salut1234'),(15,'theo_m.langlois@hotmail.com','salutsalut');
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiche`
--

DROP TABLE IF EXISTS `fiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiche` (
  `id_fiche` int NOT NULL AUTO_INCREMENT,
  `id_matiere` int DEFAULT NULL,
  `id_etudiant` int DEFAULT NULL,
  `texte_question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `texte_reponse` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_fiche`),
  KEY `id_matiere` (`id_matiere`),
  KEY `id_etudiant` (`id_etudiant`),
  CONSTRAINT `FK_fiche_etudiant` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`) ON DELETE CASCADE,
  CONSTRAINT `FK_fiche_matiere` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiche`
--

LOCK TABLES `fiche` WRITE;
/*!40000 ALTER TABLE `fiche` DISABLE KEYS */;
INSERT INTO `fiche` VALUES (59,1,1,'Les marqueurs d\'ordre: ','Ils permettent d\'??num??rer des ??l??ments d\'importance ??gale sur le plan s??mantique.'),(60,8,2,'Un exposant entier et positif indique :','Le nombre de fois o?? la base apparait dans une multiplication.'),(61,3,3,'Le volume molaire est: ','Le volume occup?? par une mole de gaz.'),(62,12,4,'Une base affect??e d\'un exposant n??gatif est ??quivalent ??: ','Il est ??quivalent ?? l\'inverse de la base affect??e de l\'exposant positif.'),(63,9,1,'L\'industrialisation du Qu??bec: ','Il s\'est faite principalement en deux phases.'),(64,1,2,'Les marqueurs d\'addition: ','Ils permettent d\'ajouter un nouvel ??l??ment ou d\'en coordonner deux ou plusieurs.'),(65,9,3,'Au milieu du 19e si??cle: ','La soci??t?? qu??b??coise est encore une soci??t?? rurale.'),(66,9,4,'Pendant la Premi??re Guerre mondiale: ','Les femmes acqui??rent le droit de vote.'),(67,6,1,'Pour cat??goriser les diff??rentes id??ologies politiques selon leurs valeurs et leurs int??r??ts: ','On utilise ce que l\'on appelle l\'axe politique.'),(68,4,2,'La vitesse est: ','Le rapport entre la variation de la position d\'un mobile et le temps n??cessaire pour faire ce changement de position.'),(69,12,3,'Selon la loi d\'Avogadro: ','Le volume d\'un gaz est directement proportionnel ?? sa quantit?? en mole.'),(70,2,4,'En Java, un membre statique est: ','Il est un membre d\'une classe qui n\'est pas associ?? ?? une instance d\'une classe.'),(71,5,1,'SQL est: ','Un langage standard pour stocker, manipuler et r??cup??rer des donn??es dans des bases de donn??es.'),(72,9,2,'L\'utilisation des termes gauche et droite:','Il provient de la France.'),(73,2,3,'Le mot-cl?? priv?? est un modificateur d\'acc??s utilis?? pour: ','Les attributs, les m??thodes et les constructeurs, les rendant accessibles uniquement dans la classe d??clar??e.'),(74,8,4,'Toute base affect??e de l\'exposant 0 donne: ','Il donne 1 sauf si la base est 0'),(75,3,1,'?? la fin de la pr??histoire: ','L\'Homme commence ?? se regrouper dans des villages permanents.'),(76,2,2,'En Java, une instruction try est utilis??e pour: ','Attraper les exceptions qui pourraient ??tre lanc??es lors de l\'ex??cution de votre programme.'),(77,12,3,'La loi d\'action de masse (ou loi de l\'??quilibre) stipule que: ','?? une temp??rature donn??e, il existe une relation constante entre les concentrations des produits et des r??actifs ?? l\'??quilibre.'),(78,3,4,'Le Pal??olithique est:','La premi??re p??riode de la pr??histoire, mais aussi la plus longue.'),(79,10,1,'Depuis la r??volution industrielle: ','Le d??veloppement ??conomique des pays et des r??gions est en grande partie tributaire des activit??s industrielles.'),(80,2,2,'Le corps d\'une m??thode abstraite: ','Le corps est fourni par la sous-classe.'),(81,7,3,'The universal selector (*): ','Il selects all HTML elements on the page.'),(82,1,4,'Les marqueurs d\'opposition: ','Ils introduisent une id??e contraire ?? la pr??c??dente.'),(83,7,1,'La propri??t?? float est utilis??e pour: ','Positionner et formater le contenu, par ex. laisser flotter une image vers le texte dans un conteneur.'),(84,3,2,'La s??dentarisation est: ','Le fait de passer de l\'??tat de nomade (se d??placer d\'un lieu ?? un autre) ?? l\'??tat de s??dentaire (demeurer en un lieu fixe) en parlant d\'un groupe ou d\'une population.'),(85,8,3,'Une base affect??e d\'un exposant fractionnaire: ','Il se traduit en une racine.'),(86,7,4,'Le s??lecteur id: ','Il utilise l\'attribut id d\'un ??l??ment HTML pour s??lectionner un ??l??ment sp??cifique.'),(87,6,1,'Les id??ologies de gauche partagent certaines valeurs telles que :','Le progr??s social, la libert??; l\'??galit??; la solidarit?? sociale.'),(88,7,2,'En Python, une fonction est: ','Elle est d??finie en utilisant le mot-cl?? def.'),(89,3,3,'Au Pal??olithique sup??rieur: ','L\'Homme peut chasser de tr??s gros animaux (Le mammouth, l\'antilope, le renne, etc.) en fabriquant des lances avec une extr??mit?? en pierre tr??s coupante que l\'on appelle ??pierre ?? lame??.'),(90,6,4,'Les id??ologies de centre partagent certaines valeurs de gauche comme: ','La redistribution des richesses'),(91,7,1,'Les commentaires multi-lignes en Python: ','Python n\'a pas vraiment de syntaxe pour les commentaires multi-lignes.'),(92,2,2,'Un constructeur dans Java est: ','Une m??thode sp??ciale qui est utilis??e pour initialiser des objets.'),(93,7,3,'Le syst??me de grille de bootstrap est: ','Il construit avec flexbox et permet jusqu\'?? 12 colonnes sur la page.'),(94,1,4,'Les marqueurs du temps: ','Ils permettent de signaler la simultan??it??, l\'ant??riorit?? ou la post??riorit?? entre les faits ou les situations.'),(95,3,1,'?? la p??riode m??solithique: ','Les tribus commencent ?? explorer les continents asiatique et europ??en, quittant ainsi les rives de la M??sopotamie.'),(96,12,2,'Quel est l\'effet secondaire le plus courant de la prednisone (Deltasone)?','Le changements d\'humeur.'),(97,4,3,'La vitesse moyenne d\'un mobile est: ','Le rapport entre la distance parcourue et la dur??e qu\'a pris le mobile pour parcourir cette distance.'),(98,3,4,'?? partir de quel mois est-il conseill?? d\'introduire les viandes dans l\'alimentation d\'un enfant?','9e mois.'),(99,12,1,'L\'expression de la constante d\'??quilibre est: ','Il est ??tablie en fonction de l\'??quation de la r??action chimique concern??e.'),(100,11,2,'La cellule est: ','L\'unit?? fondamentale ?? la base de tout ??tre vivant.'),(101,3,3,'Les peuples chasseurs-cueilleurs qu\'on appelle aussi les collecteurs: ','Ils suivent la migration des animaux sur diff??rents territoires. Ils profitent des richesses de la faune sauvage et de la flore.'),(102,11,4,'La cellule v??g??tale est: ','Celle qui constitue toutes les organismes v??g??taux.'),(103,8,1,'Toute base affect??e de l\'exposant 1 donne: ','Il donne la base elle-m??me.'),(104,11,2,'Le cytoplasme est: ','Une substance g??latineuse dans laquelle baignent le noyau et les autres organites.'),(105,11,3,'Quel type d\'immunit?? fait r??f??rence ?? la capacit?? d\'une population de r??sister ?? une ??pid??mie? ','L\'immunit?? collective.'),(106,3,4,'Les soci??t??s pastorales sont: ','Des groupes nomades qui d??tiennent des troupeaux d\'herbivores (vaches, moutons, ch??vres, etc.).'),(107,11,1,'La membrane cytoplasmique est: ','Elle est poreuse et on la dit de perm??abilit?? s??lective (semi-perm??able).'),(108,6,2,'Les id??ologies de centre partagent certaines valeurs de droite comme: ','La d??fense des libert??s individuelles.'),(109,11,3,'Vacuole: ','Il s\'agit de petits sacs servant ?? entreposer des substances dans le cytoplasme des cellules v??g??tales et des cellules animales.'),(110,4,4,'La vitesse instantan??e est: ','La vitesse ?? un instant pr??cis du d??placement d\'un mobile.'),(111,11,1,'On distingue deux types de r??ticulum: ','Le r??ticulum endoplasmique lisse (REL) et le r??ticulum endoplasmique rugueux (RER).'),(112,3,2,'Au Pal??olithique inf??rieur: ','L\'Homme ne fait que capturer de petits animaux (oiseaux bless??s, renards, rongeurs, etc.) '),(113,11,3,'Mitochondrie: ','Elles convertissent l\'??nergie qui provient du milieu pour la rendre utilisable par la cellule (comme une centrale ??lectrique).'),(114,9,4,'La droite comprend des id??ologies partageant des valeurs comme :','La d??fense des traditions; l\'ordre; la d??fense des libert??s individuelles.'),(115,1,3,'Les marqueurs d\'ordre:','Ils permettent d\'??num??rer des ??l??ments d\'importance ??gale sur le plan s??mantique.'),(121,5,10,'SQL est: ','Un langage standard pour stocker, manipuler et r??cup??rer des donn??es dans des bases de donn??es.'),(122,3,10,'Quelles sont les couleurs du drapeau du Japon','rouge et blanc');
/*!40000 ALTER TABLE `fiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matiere` (
  `id_matiere` int NOT NULL AUTO_INCREMENT,
  `nom_matiere` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_etudiant` int DEFAULT NULL,
  PRIMARY KEY (`id_matiere`),
  KEY `id_etudiant` (`id_etudiant`),
  CONSTRAINT `FK_matiere_etudiant` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matiere`
--

LOCK TABLES `matiere` WRITE;
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
INSERT INTO `matiere` VALUES (11,'biologie humaine',7),(8,'calcul I',10),(12,'chimie organique',8),(10,'??conomie et soci??t??',10);
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 10:18:48
