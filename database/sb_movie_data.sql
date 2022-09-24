-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `movie_data`
--

DROP TABLE IF EXISTS `movie_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_data` (
  `name` varchar(40) DEFAULT NULL,
  `mid` int(11) NOT NULL,
  `release_date` date DEFAULT NULL,
  `actor_M` varchar(20) DEFAULT NULL,
  `actor_F` varchar(20) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `About` varchar(1000) DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_data`
--

LOCK TABLES `movie_data` WRITE;
/*!40000 ALTER TABLE `movie_data` DISABLE KEYS */;
INSERT INTO `movie_data` VALUES ('JUMANJI',1,'2019-10-16','Dwayne Johnson','Karen Gillan','Jake Kasdan','The four players brave the jungle, desert, mountains and dangerous animals to save the fantastical video game world of Jumanji.The four players brave the jungle, desert, mountains and dangerous animals to save the fantastical video game world of Jumanji.','English'),('MINIONS',2,'2016-02-02','minions','minions',' Kyle Balda','Minions Kevin, Stuart and Bob decide to find a new master. They embark on a global trip and meet Scarlett Overkill, a female super-villain who recruits them and hatches a plan to take over the world.','English'),('BAAGHI',3,'2016-04-29','Tiger','shraddha','Sabbir Khan','Ronny, a rebellious man, falls in love with Sia but circumstances separate them. Years later, Ronny learns that Sia is abducted by the martial arts champion Raghav.','Hindi'),('HOW TO TRAIN YOUR DRAGON 3',4,'2019-02-22','anime','anime','Dean DeBlois','All seems well on the island of Berk as Vikings and dragons live together in peace and harmony. Now a Viking leader, Hiccup finds himself increasingly attracted to Astrid, while his beloved dragon Toothless meets an enchanting creature who captures his eye. When the evil Grimmel launches a devious plan to wipe out all the dragons, Hiccup must unite both clans to find Caldera, a hidden land that holds the key to saving Toothless and his flying friends.','English '),('BAHUBALI 2',5,'2019-04-29','Prabhas','Anushka shetty','S. S. Rajamouli','After learning that his father was brutally killed by Bhallaladeva, Mahendra Baahubali raises an army to defeat him and release his mother from the former\'s captivity.','Telugu'),('SAAHO',6,'2019-08-20','Prabhas','Shraddha','Sujeeth','A man uses an arsenal of weapons to battle a gang of heavily armed thugs in the city. With the city under fire and people\'s lives at risk, the one man has to give everything he has got to take the city back.','Telugu'),('K G F',7,'2019-04-21','Yash','Srinidhi Shetty',' Prashanth Neel','Rocky, a young man, seeks to acquire power and wealth to fulfil a promise made to his dying mother. Later, he finds not only wealth and power but also something more meaningful, respect.','Kannada'),('DOCTOR  STRANGE',8,'2019-10-09','Benedict','Rachel McAdams','Scott Derrickson','In an accident, Stephen Strange, a famous neurosurgeon, loses the ability to use his hands. He goes to visit the mysterious Ancient One to heal himself and becomes a great sorcerer under her tutelage.','Engllish'),('SHERLOK HOLMES',9,'2019-09-26','Robert Downey, Jr',' Jude Law','Dexter Fletcher','Sherlock Holmes is a 2009 period mystery action film based on the character of the same name created by Sir Arthur Conan Doyle. The film was directed by Guy Ritchie and produced by Joel Silver, Lionel Wigram, Susan Downey, and Dan Lin.\n','ENGLISH'),('JOKER',10,'2019-10-08','Joaquin Phoenix','Zazie Beetz','Todd Phillips','Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he\'s part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.','ENGLISH'),('JOHN WICK 3',11,'2019-09-10','Keanu Reeves','Halle Berry','Chad Stahelski','After gunning down a member of the High Table -- the shadowy international assassin\'s guild -- legendary hit man John Wick finds himself stripped of the organization\'s protective services. Now stuck with a $14 million bounty on his head, Wick must fight his way through the streets of New York as he becomes the target of the world\'s most ruthless killers.','ENGLISH'),('IRON MAN 3',12,'2019-10-09','Robert Downey, Jr.','Gwyneth Paltrow',' Shane Black','Tony Stark encounters a formidable foe called the Mandarin. After failing to defeat his enemy, he embarks on a journey with relentless consequences and a suit that ceases to exist','ENGLISH'),('END GAME',13,'2019-09-27','Chris Hemsworth','Scarlett Johansson','Joe Russo','After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.','ENGLISH'),('WAR',14,'2019-10-23','Hrithik Roshan','Vaani Kapoor','Siddharth Anand','An Indian soldier is assigned to eliminate his former mentor and he must keep his wits about him if he is to be successful in his mission. When the two men collide, it results in a barrage of battles and bullets','HINDI'),('HAPPY NEW YEAR',15,'2019-04-15','Sharusk','Deepika padukone','Farah Khan','In a quest to pull off a heist at a hotel in Dubai, Charlie assembles a team of non-dancers to take part in a dance competition at the hotel. They enlist the help of a bar dancer.','Hindi'),('YEH JAWANI HEY DEEWANI',16,'2019-07-25','Ranbeer Kapoor','Deepika Padukone','Ayan Mukerji','Kabir, a guy who wants to make it big in the travel industry, meets Naina during a trekking trip. She falls for him but refrains from expressing it. Years later they meet at a friend\'s wedding.','Hindi'),('housefull 4',17,'2019-10-25','akshay','kriti','Farhad Samji','Three pairs of reincarnated lovers reunite in the present day -- but the men wind up falling for the wrong women.Three pairs of reincarnated lovers reunite in the present day -- but the men wind up falling for the wrong women','hindi'),('dream girl',18,'2019-11-15','ayushman','nushrat','Raaj Shaandilyaa','Bollywood rom-com, directed by Raaj Shaanilyaa, stars Ayushmann Khurrana who plays a `dream girl\'. In every love story, there is always one trying to win the heart of the other, who could be the `dream girl\'.','hindi'),('dark knight',19,'2019-11-14','Heath Ledger','Christian Bale','Christopher Nolan','DescriptionAfter Gordon, Dent and Batman begin an assault on Gotham\'s organised crime, the mobs hire the Joker, a psychopathic criminal mastermind, who wants to bring all the heroes down to his level.','hindi'),('eaga',20,'2019-11-04','sudeep','samanta','rajamouli','Nani loves Bindu but is killed by a jealous Sudeep, who lusts after Bindu. Nani is reincarnated as a fly and decides to avenge his death. He teams up with Bindu to make Sudeep\'s life a living hell.Makkhi is about a villain Sudeep who kills the hero Jani (Nani). Bindu (Samantha) plays love interest of Jani in the movie.','telugu');
/*!40000 ALTER TABLE `movie_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 21:54:58
