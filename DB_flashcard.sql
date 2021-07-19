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
INSERT INTO `fiche` VALUES (59,1,1,'Les marqueurs d\'ordre: ','Ils permettent d\'énumérer des éléments d\'importance égale sur le plan sémantique.'),(60,8,2,'Un exposant entier et positif indique :','Le nombre de fois où la base apparait dans une multiplication.'),(61,3,3,'Le volume molaire est: ','Le volume occupé par une mole de gaz.'),(62,12,4,'Une base affectée d\'un exposant négatif est équivalent à: ','Il est équivalent à l\'inverse de la base affectée de l\'exposant positif.'),(63,9,1,'L\'industrialisation du Québec: ','Il s\'est faite principalement en deux phases.'),(64,1,2,'Les marqueurs d\'addition: ','Ils permettent d\'ajouter un nouvel élément ou d\'en coordonner deux ou plusieurs.'),(65,9,3,'Au milieu du 19e siècle: ','La société québécoise est encore une société rurale.'),(66,9,4,'Pendant la Première Guerre mondiale: ','Les femmes acquièrent le droit de vote.'),(67,6,1,'Pour catégoriser les différentes idéologies politiques selon leurs valeurs et leurs intérêts: ','On utilise ce que l\'on appelle l\'axe politique.'),(68,4,2,'La vitesse est: ','Le rapport entre la variation de la position d\'un mobile et le temps nécessaire pour faire ce changement de position.'),(69,12,3,'Selon la loi d\'Avogadro: ','Le volume d\'un gaz est directement proportionnel à sa quantité en mole.'),(70,2,4,'En Java, un membre statique est: ','Il est un membre d\'une classe qui n\'est pas associé à une instance d\'une classe.'),(71,5,1,'SQL est: ','Un langage standard pour stocker, manipuler et récupérer des données dans des bases de données.'),(72,9,2,'L\'utilisation des termes gauche et droite:','Il provient de la France.'),(73,2,3,'Le mot-clé privé est un modificateur d\'accès utilisé pour: ','Les attributs, les méthodes et les constructeurs, les rendant accessibles uniquement dans la classe déclarée.'),(74,8,4,'Toute base affectée de l\'exposant 0 donne: ','Il donne 1 sauf si la base est 0'),(75,3,1,'À la fin de la préhistoire: ','L\'Homme commence à se regrouper dans des villages permanents.'),(76,2,2,'En Java, une instruction try est utilisée pour: ','Attraper les exceptions qui pourraient être lancées lors de l\'exécution de votre programme.'),(77,12,3,'La loi d\'action de masse (ou loi de l\'équilibre) stipule que: ','À une température donnée, il existe une relation constante entre les concentrations des produits et des réactifs à l\'équilibre.'),(78,3,4,'Le Paléolithique est:','La première période de la préhistoire, mais aussi la plus longue.'),(79,10,1,'Depuis la révolution industrielle: ','Le développement économique des pays et des régions est en grande partie tributaire des activités industrielles.'),(80,2,2,'Le corps d\'une méthode abstraite: ','Le corps est fourni par la sous-classe.'),(81,7,3,'The universal selector (*): ','Il selects all HTML elements on the page.'),(82,1,4,'Les marqueurs d\'opposition: ','Ils introduisent une idée contraire à la précédente.'),(83,7,1,'La propriété float est utilisée pour: ','Positionner et formater le contenu, par ex. laisser flotter une image vers le texte dans un conteneur.'),(84,3,2,'La sédentarisation est: ','Le fait de passer de l\'état de nomade (se déplacer d\'un lieu à un autre) à l\'état de sédentaire (demeurer en un lieu fixe) en parlant d\'un groupe ou d\'une population.'),(85,8,3,'Une base affectée d\'un exposant fractionnaire: ','Il se traduit en une racine.'),(86,7,4,'Le sélecteur id: ','Il utilise l\'attribut id d\'un élément HTML pour sélectionner un élément spécifique.'),(87,6,1,'Les idéologies de gauche partagent certaines valeurs telles que :','Le progrès social, la liberté; l\'égalité; la solidarité sociale.'),(88,7,2,'En Python, une fonction est: ','Elle est définie en utilisant le mot-clé def.'),(89,3,3,'Au Paléolithique supérieur: ','L\'Homme peut chasser de très gros animaux (Le mammouth, l\'antilope, le renne, etc.) en fabriquant des lances avec une extrémité en pierre très coupante que l\'on appelle «pierre à lame».'),(90,6,4,'Les idéologies de centre partagent certaines valeurs de gauche comme: ','La redistribution des richesses'),(91,7,1,'Les commentaires multi-lignes en Python: ','Python n\'a pas vraiment de syntaxe pour les commentaires multi-lignes.'),(92,2,2,'Un constructeur dans Java est: ','Une méthode spéciale qui est utilisée pour initialiser des objets.'),(93,7,3,'Le système de grille de bootstrap est: ','Il construit avec flexbox et permet jusqu\'à 12 colonnes sur la page.'),(94,1,4,'Les marqueurs du temps: ','Ils permettent de signaler la simultanéité, l\'antériorité ou la postériorité entre les faits ou les situations.'),(95,3,1,'À la période mésolithique: ','Les tribus commencent à explorer les continents asiatique et européen, quittant ainsi les rives de la Mésopotamie.'),(96,12,2,'Quel est l\'effet secondaire le plus courant de la prednisone (Deltasone)?','Le changements d\'humeur.'),(97,4,3,'La vitesse moyenne d\'un mobile est: ','Le rapport entre la distance parcourue et la durée qu\'a pris le mobile pour parcourir cette distance.'),(98,3,4,'À partir de quel mois est-il conseillé d\'introduire les viandes dans l\'alimentation d\'un enfant?','9e mois.'),(99,12,1,'L\'expression de la constante d\'équilibre est: ','Il est établie en fonction de l\'équation de la réaction chimique concernée.'),(100,11,2,'La cellule est: ','L\'unité fondamentale à la base de tout être vivant.'),(101,3,3,'Les peuples chasseurs-cueilleurs qu\'on appelle aussi les collecteurs: ','Ils suivent la migration des animaux sur différents territoires. Ils profitent des richesses de la faune sauvage et de la flore.'),(102,11,4,'La cellule végétale est: ','Celle qui constitue toutes les organismes végétaux.'),(103,8,1,'Toute base affectée de l\'exposant 1 donne: ','Il donne la base elle-même.'),(104,11,2,'Le cytoplasme est: ','Une substance gélatineuse dans laquelle baignent le noyau et les autres organites.'),(105,11,3,'Quel type d\'immunité fait référence à la capacité d\'une population de résister à une épidémie? ','L\'immunité collective.'),(106,3,4,'Les sociétés pastorales sont: ','Des groupes nomades qui détiennent des troupeaux d\'herbivores (vaches, moutons, chèvres, etc.).'),(107,11,1,'La membrane cytoplasmique est: ','Elle est poreuse et on la dit de perméabilité sélective (semi-perméable).'),(108,6,2,'Les idéologies de centre partagent certaines valeurs de droite comme: ','La défense des libertés individuelles.'),(109,11,3,'Vacuole: ','Il s\'agit de petits sacs servant à entreposer des substances dans le cytoplasme des cellules végétales et des cellules animales.'),(110,4,4,'La vitesse instantanée est: ','La vitesse à un instant précis du déplacement d\'un mobile.'),(111,11,1,'On distingue deux types de réticulum: ','Le réticulum endoplasmique lisse (REL) et le réticulum endoplasmique rugueux (RER).'),(112,3,2,'Au Paléolithique inférieur: ','L\'Homme ne fait que capturer de petits animaux (oiseaux blessés, renards, rongeurs, etc.) '),(113,11,3,'Mitochondrie: ','Elles convertissent l\'énergie qui provient du milieu pour la rendre utilisable par la cellule (comme une centrale électrique).'),(114,9,4,'La droite comprend des idéologies partageant des valeurs comme :','La défense des traditions; l\'ordre; la défense des libertés individuelles.'),(115,1,3,'Les marqueurs d\'ordre:','Ils permettent d\'énumérer des éléments d\'importance égale sur le plan sémantique.'),(121,5,10,'SQL est: ','Un langage standard pour stocker, manipuler et récupérer des données dans des bases de données.'),(122,3,10,'Quelles sont les couleurs du drapeau du Japon','rouge et blanc');
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
INSERT INTO `matiere` VALUES (11,'biologie humaine',7),(8,'calcul I',10),(12,'chimie organique',8),(10,'économie et société',10);
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
