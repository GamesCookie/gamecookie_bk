-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: GamesCookie
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Sports','person-running',NULL,1,'2025-10-29 08:18:09','2025-11-10 06:56:30'),(2,'Action','fire',NULL,1,'2025-10-29 08:54:49','2025-11-10 06:56:37'),(3,'Arcade','ghost',NULL,1,'2025-10-29 08:55:00','2025-11-10 06:56:46'),(4,'Puzzle','puzzle-piece',NULL,1,'2025-10-29 08:55:13','2025-11-10 06:56:57'),(5,'Adventure','person-hiking',NULL,1,'2025-10-29 08:55:25','2025-11-10 06:57:21'),(6,'Reflex','gem',NULL,1,'2025-10-29 08:55:37','2025-11-10 06:57:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `gameId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `gameId` (`gameId`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (19,1,27,'2025-11-04 14:31:00','2025-11-04 14:31:00'),(24,1,1,'2025-11-04 17:30:23','2025-11-04 17:30:23'),(25,4,10,'2025-11-11 07:57:55','2025-11-11 07:57:55'),(27,2,16,'2025-11-12 06:51:01','2025-11-12 06:51:01'),(28,1,31,'2025-11-13 16:36:54','2025-11-13 16:36:54'),(32,3,1,'2025-11-28 04:42:29','2025-11-28 04:42:29'),(34,3,7,'2025-11-28 04:42:56','2025-11-28 04:42:56'),(35,3,2,'2025-11-28 04:43:00','2025-11-28 04:43:00');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_reviews`
--

DROP TABLE IF EXISTS `game_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `gameId` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `helpfulCount` int DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `gameId` (`gameId`),
  CONSTRAINT `game_reviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `game_reviews_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_reviews`
--

LOCK TABLES `game_reviews` WRITE;
/*!40000 ALTER TABLE `game_reviews` DISABLE KEYS */;
INSERT INTO `game_reviews` VALUES (1,3,16,5,'Loved this game\n',0,1,'2025-11-04 16:52:00','2025-11-04 16:52:00'),(2,4,17,5,'Nostalgic feels! ',0,1,'2025-11-06 03:40:26','2025-11-06 03:40:26'),(3,4,1,4,'Uj',0,1,'2025-11-07 13:28:58','2025-11-07 13:28:58'),(4,4,14,5,'Nsjsj',0,1,'2025-11-07 13:32:05','2025-11-07 13:32:05'),(5,1,4,5,'',0,1,'2025-11-10 08:25:14','2025-11-10 08:25:14'),(6,2,15,5,'hjhjhj',0,1,'2025-11-12 06:11:25','2025-11-12 06:11:25'),(7,2,15,3,' vjhvhjbjh',0,1,'2025-11-12 06:12:11','2025-11-12 06:12:11'),(8,2,16,4,'New name',0,1,'2025-11-12 06:52:49','2025-11-12 06:52:49'),(9,6,14,5,'jjkajsaj',0,1,'2025-11-12 07:15:28','2025-11-12 07:15:28'),(10,1,3,3,'sd',0,1,'2025-11-13 16:34:18','2025-11-13 16:34:18'),(11,1,1,3,'',0,1,'2025-11-20 07:20:03','2025-11-20 07:20:03'),(12,1,1,5,'god',0,1,'2025-11-20 07:20:21','2025-11-20 07:20:21'),(13,1,17,5,'',0,1,'2025-11-24 07:16:40','2025-11-24 07:16:40'),(14,1,17,4,'',0,1,'2025-11-24 07:16:48','2025-11-24 07:16:48'),(15,3,33,4,'',0,1,'2025-11-24 13:45:32','2025-11-24 13:45:32'),(16,3,33,4,'',0,1,'2025-11-24 13:45:44','2025-11-24 13:45:44'),(17,3,33,4,'',0,1,'2025-11-24 13:45:55','2025-11-24 13:45:55'),(18,3,33,5,'',0,1,'2025-11-24 13:46:05','2025-11-24 13:46:05'),(19,3,33,4,'',0,1,'2025-11-24 13:49:41','2025-11-24 13:49:41'),(20,3,7,4,'',0,1,'2025-11-27 15:46:35','2025-11-27 15:46:35'),(21,3,7,4,'',0,1,'2025-11-27 15:46:54','2025-11-27 15:46:54'),(22,3,2,5,'',0,1,'2025-11-27 15:53:33','2025-11-27 15:53:33');
/*!40000 ALTER TABLE `game_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categoryId` int DEFAULT NULL,
  `game_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` text,
  `meta_keywords` text,
  `meta_description` text,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Air Hockey','air-hockey','uploads/games/1761828718744.png',1,'https://games.gamescookie.com/air-hockey/','<p>Challenge your reflexes and precision in this fast-paced Air Hockey game! Take control of the paddle and score goals against your opponent by striking the puck into their net. With smooth gameplay and realistic physics, every match is full of excitement.</p><p><br></p><p>Perfect for quick fun sessions or competitive showdowns — can you become the Air Hockey champion?</p><p><br></p><p>How to Play:</p><p><br></p><ul><li>Use your mouse (or touch on mobile) to control the paddle.</li><li>Defend your goal and try to score points by hitting the puck into the opponent’s goal.</li><li>First to reach the target score wins!</li></ul>','Air Hockey – Online Tabletop Sports Game | Play Now on GamesCookie','air hockey, hockey tabletop game, sports game, arcade game, free games, h5 games, online games, html5 games, browser games','Enjoy fast-paced online air hockey! Outsmart your opponent, score goals, and experience realistic table sports gameplay. No download',1,'2025-10-30 12:51:58','2025-12-12 11:41:54'),(2,'Badminton','badminton','uploads/games/1761828866446.jpeg',1,'https://games.gamescookie.com/badminton/','<p>Step onto the court and test your reflexes in Badminton Smash! Play fast-paced rallies, time your shots perfectly, and outsmart your opponent to claim victory. Whether you’re smashing, dropping, or defending, every move counts in this exciting badminton showdown!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Tap or click to hit the shuttlecock</li><li>Time your hit to send powerful smashes or gentle drops</li><li>Score points by landing the shuttle on your opponent’s side</li><li>Keep rallying and become the ultimate badminton champion! 🏆</li></ul>','Badminton Game – Smash, Rally & Score | Play Now on GamesCookie','badminton game, sports game, racket game, hit the shuttle, casual sports, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Play a fast-paced badminton match. Hit the shuttle, time your shots, and score high in this quick sports game. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-30 12:54:26','2025-12-12 11:42:02'),(3,'Beach Defender','beach-defender','uploads/games/1762399243145.png',5,'https://games.gamescookie.com/beach-defender','<p>Get ready to protect your paradise! In <strong>Beach Defender,</strong> your mission is to defend the sunny shores from a wave of incoming rockets and missiles. Tap or click to blow them out of the sky before they reach the beach. Watch out for pink rockets — they bring extra health and bonus life! Stay sharp, survive as long as you can, and prove you’re the ultimate guardian of the coast.</p>','Beach Defender – Free Online Defense Game | Play Now on GamesCookie','beach defender, beach defender game, defense games online, shooting games, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Play Beach Defender online! Protect the beach from incoming enemies in this fast-paced shooting defense game. Aim, shoot, and survive waves of attackers. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 07:11:37','2025-12-12 09:59:46'),(4,'Black Hole','black-hole','uploads/games/1761894818999.png',3,'https://games.gamescookie.com/black-hole/','<p>Enter the cosmic battlefield in Black Hole! Aim, shoot, and master the pull of gravity as you guide meteors through space. Your goal? Feed the black hole while collecting glowing stars scattered across the galaxy. Every shot counts — precision and timing are the key to cosmic domination!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Tap and hold anywhere on the screen to control your meteor</li><li>Drag to set the direction and power of your shot</li><li>Release to launch the meteor toward the black hole</li><li>Collect stars along the way for bonus points.</li></ul><p><br></p><p>Keep practicing your aim — the perfect shot is out of this world! 🌠</p>','Black Hole – Absorb & Grow Arcade Game | Play Now on GamesCookie','black hole game, hole absorbing game, physics casual games, grow and absorb, arcade games, h5 games, html5 games, online games, browser games, free games, skill based games','Move the black hole, swallow objects, and grow bigger to clear each level. Simple, satisfying, and highly addictive. Play instantly online. No download needed.',1,'2025-10-31 07:13:39','2025-12-12 11:42:33'),(5,'Blast The Balloons','blast-the-balloons','uploads/games/1761895070382.png',6,'https://games.gamescookie.com/blast-the-balloons/','<p>&nbsp;Pop your way to victory in Blast The Balloons! The sky is full of colorful balloons — tap fast and blast them before they float away. Can you keep up and become the ultimate balloon blaster?</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Tap on the balloons to pop them before they escape the screen</li><li>Earn points for every balloon you blast</li><li>Avoid missing too many, or the game ends</li><li>Keep popping to climb the leaderboard! 🎈🔥</li></ul>','Blast The Balloons – Tap to Pop Balloons | Play Now on GamesCookie','balloon game, tap to pop, balloon blast, reflex game, kids balloon game, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Tap fast and pop colorful balloons before they escape. A fun and quick reflex balloon-popping arcade game. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 07:17:50','2025-12-12 11:42:40'),(6,' Block Vs Ball','block-vs-ball','uploads/games/1762845995149.png',3,'https://games.gamescookie.com/block-vs-ball/','<p>Get hooked on this ultimate block-breaking challenge! In Block Vs Ball, your goal is simple — aim, shoot, and destroy as many numbered blocks as you can. Each block shows how many hits it takes to break, so plan your shots wisely and keep the balls bouncing to rack up a massive high score!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Drag to aim your shot</li><li>Release to launch the ball toward the numbered blocks</li><li>Each block needs its number of hits to break</li><li>Clear as many blocks as possible before they reach the bottom</li></ul>','Block vs Ball – Break Number Blocks | Play Now on GamesCookie','block vs ball, brick breaker, number blocks, drag to aim, shooting games, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games, arcade games','Drag to aim and break numbered blocks. Create massive combos and score high in this addictive brick-breaker style game. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 07:20:44','2025-12-12 11:42:49'),(7,'Bottle Flip Challenge','bottle-flip-challenge','uploads/games/1762844012338.png',3,'https://games.gamescookie.com/bottle-flip-challenge/','<p>Test your timing and precision in the viral Bottle Flip Challenge! Flip the bottle and try to make it land upright on different surfaces. Sounds easy? Think again! Each level brings trickier platforms and angles to test your skills.</p><p><br></p><p>How to Play:</p><p><br></p><ul><li>Swipe for the correct amount of time to flip the bottle</li><li>Land it upright to score points and move ahead</li><li>Miss the landing and it’s game over — try again!</li></ul>','Bottle Flip Challenge – Online Skill Game | Play Now on GamesCookie','bottle flip challenge, bottle flip game, skill flip game, timing games, arcade games, h5 games, html5 games, online games, browser games, free games, skill based games','Flip the bottle perfectly and master the timing in this super addictive bottle flip challenge. Play instantly online. No download needed.',1,'2025-10-31 09:39:28','2025-12-12 11:43:13'),(8,'Bouncing Ball','bouncing-ball','uploads/games/1761903646608.png',5,'https://games.gamescookie.com/bouncing-ball/','<p>Get ready for nonstop action in Bouncing Balls! Aim, shoot, and land your ball perfectly on the tower while collecting shiny diamonds along the way. Precision and timing are everything — miss your mark, and it’s game over! 💎🎯</p>','Bouncing Balls – Aim, Bounce & Collect Diamonds | Play Now on GamesCookie','bouncing balls game, aim and bounce, collect diamonds, tower bounce, adventure games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Aim your ball to land on towers and collect diamonds along the way. Simple, addictive bouncing arcade fun. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 09:40:46','2025-12-12 11:43:22'),(9,'Box Tower','box-tower','uploads/games/1761903781212.jpg',6,'https://games.gamescookie.com/boxtower/','<p>Test your timing and precision in Box Tower! Stack boxes perfectly on top of each other to build the tallest tower possible. One wrong move and your tower could topple — how high can you go before it all comes crashing down?</p>',NULL,'Box Tower','Box Tower',0,'2025-10-31 09:43:01','2025-11-01 06:03:50'),(10,'Break The Bricks','break-the-bricks','uploads/games/1762015798069.png',3,'https://games.gamescookie.com/break-the-bricks-html5/','<p>Relive the classic arcade fun with Break The Bricks! Control the paddle, bounce the ball, and shatter all the bricks above. It’s fast, fun, and addictive — test your reflexes and precision to clear every level and chase the ultimate high score!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Move the bar (paddle) left or right to bounce the ball</li><li>Keep the ball in play to break all the bricks on the screen</li><li>Don’t let the ball fall! You’ll lose a life if it drops</li><li>Catch power-ups for extra abilities and higher scores</li></ul>','Break The Bricks – Classic Brick Breaker | Play Now on GamesCookie','brick breaker game, break bricks, bounce ball, arcade games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Move the bar to bounce the ball and break all the bricks. A timeless arcade challenge for all ages. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 09:44:32','2025-12-12 11:43:31'),(11,'Bubble Shoots','bubble-shoots','uploads/games/1761903985477.png',3,'https://games.gamescookie.com/bubble-shooter/','<p>&nbsp;Aim, match, and pop your way to victory in <strong>Bubble Shoots</strong>! Shoot colorful bubbles to form groups of three or more and watch them burst. Clear the screen before the bubbles reach the bottom in this addictive arcade challenge that never gets old.</p><p><br></p><p>How to Play:</p><p><br></p><ul><li>Use your mouse or touch controls to aim the shooter</li><li>Match three or more bubbles of the same color to pop them</li><li>Clear all bubbles on the screen to advance</li><li>Don’t let the bubbles stack too low, or it’s game over!</li></ul>','Bubble Shoots – Aim, Shoot & Pop Bubbles | Play Now on GamesCookie','bubble shooter, shoot bubbles, bubble pop game, match bubbles, puzzle games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Aim and shoot colorful bubbles to match and pop them. Clear the board with smart angles and perfect shots. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 09:46:25','2025-12-13 01:44:24'),(12,'Build The Pictures','build-the-pictures','uploads/games/1762843894465.png',4,'https://games.gamescookie.com/build-the-pictures/','<p>Put your mind to the test with Build The Pictures! Rearrange scattered puzzle pieces to form a complete image. From simple shapes to detailed scenes, every level brings a new challenge that sharpens your memory and focus. Relaxing, fun, and perfect for puzzle lovers of all ages!</p>','Build The Pictures – Piece Together the Puzzle | Play Now on GamesCookie','picture puzzle game, build the picture, puzzle games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Solve fun picture puzzles by assembling pieces into complete images. Relaxing and perfect for all ages. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 10:46:51','2025-12-12 10:36:56'),(13,'ZigZag Ball','zigzag-ball','uploads/games/1761913346385.png',6,'https://games.gamescookie.com/zigzag-ball/','<p>Test your reflexes in Zigzag Ball! Guide the rolling ball along a sharp-turning path — tap at the right moment to stay on track. One wrong angle and you’re off the edge! Simple, fast, and endlessly addictive.</p>','Zigzag Ball – Reflex-Based Arcade Challenge Game','zigzag ball, zig zag challenge, ball path game, reflex games, arcade games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Keep the ball on the twisting zigzag path for as long as you can! A fast and addictive reflex game perfect for quick fun. Play instantly online. No download needed.',1,'2025-10-31 12:22:26','2025-12-12 08:35:21'),(14,'Sports Quest','sports-quest','uploads/games/1761913499222.png',1,'https://games.gamescookie.com/sport-quest/','<p>Step onto the ultimate puzzle field in Sports Quest! Match 3 or more sports balls — footballs, basketballs, tennis balls, and more — to score big and clear the board. Each combo brings explosive action and higher points. Ready to crush the leaderboard? Game on! 🏅🔥</p>','Sports Quest – Puzzle Game Online | Play Now on GamesCookie','sports quest, match 3 sports game, puzzle games, ball matching game, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Match 3 or more sports balls and clear the board in this simple and satisfying puzzle game. Fun for all ages. Play instantly online. No download needed.',1,'2025-10-31 12:24:59','2025-12-12 11:48:54'),(15,'Save The Miner','save-the-miner','uploads/games/1761913942415.png',5,'https://games.gamescookie.com/save-the-miner/','<p>Get ready for tense timing and quick decisions in Save The Miner! Tap with perfect timing — one chance to save the miner.</p>','Save the Miner – Addictive Timing Puzzle Game | Play Now on GamesCookie','save the miner, time games, tap timing game, miner puzzle game, puzzle games, adventure games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Tap at the perfect moment to save the miner from danger. A fast, addictive timing puzzle game that tests your reflex and focus. Play instantly online. No download needed.',1,'2025-10-31 12:32:22','2025-12-12 11:49:28'),(16,'Rolling Ball','rolling-ball','uploads/games/1761914274183.png',6,'https://games.gamescookie.com/rolling-ball/','<p>Test your focus and reflexes in Rolling Ball! Control a ball as it rolls down a tricky path filled with sharp turns, narrow edges, and obstacles. Keep it balanced, stay on track, and see how far you can go without falling.</p><p><br></p><p>How to Play:</p><p><br></p><ul><li>Tap or click to steer the ball along the path</li><li>Avoid falling off the edges</li><li>Collect points the longer you survive</li><li>Challenge yourself to beat your best distance!</li></ul>','Rolling Ball – Balance & Reflex Game | Play Now on GamesCookie','rolling ball, ball balance game, reflex games, arcade games, rolling challenge, h5 games, html5 games, online games, browser games','Navigate the rolling ball through twists and narrow paths without falling. A thrilling and fast-paced reflex challenge. No download needed',1,'2025-10-31 12:37:54','2025-12-12 11:50:00'),(17,'Pac-Rat','pac-rat','uploads/games/1761914754228.png',3,'https://games.gamescookie.com/pacrat/','<p>Step into the maze as a hungry little rat in Pac-Rat, a fun twist on the classic Pac-Man game! Munch on cheese pieces to gain power and outsmart the sneaky cats chasing you. Collect all the cheese in each level while avoiding danger to become the ultimate maze runner.</p><p><br></p><p>How to Play:</p><p><br></p><ul><li>Use arrow keys (or swipe on mobile) to move your rat through the maze</li><li>Eat cheese to gain power</li><li>When powered up, you can chase and defeat cats</li><li>Clear the maze by eating all the cheese to advance to the next level</li></ul>','Pac Rat – Fun Maze Chase Game | Play Now on GamesCookie','pac rat, maze chase game, rat game, arcade game, pacman type game, h5 games, html5 games, online games, browser games, free games','Help the hungry rat escape the cats while collecting food in this fun and fast-paced maze chase adventure. Inspired from the classic Pacman game. No download needed.',1,'2025-10-31 12:45:54','2025-12-12 11:51:04'),(18,'Onet Animals','onet-animals','uploads/games/1761915389021.png',4,'https://games.gamescookie.com/onet-animals','<p>Step into a world of adorable animals and brain-teasing fun in Onet Animals! Match pairs of the same animal tiles by connecting them with a line — but the path can’t bend more than twice! Clear the board before time runs out and test how fast your mind can match.</p>','Onet Animals – Connect Matching Animal Tiles | Play Now on GamesCookie','onet animals, animal tile match, connect puzzle, h5 games, html5 games, online games, browser games, free games, skill based games, casual games, puzzle games','Match pairs of animal tiles through a connecting path. Clear the board before time runs out. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 12:56:29','2025-12-12 11:51:38'),(19,'Mini Monster Run','mini-monster-run','uploads/games/1761917010094.png',2,'https://games.gamescookie.com/mini-monster-run/','<p>Dash, dodge, and delight in Mini Monster Run! Control an adorable little monster as it sprints through colorful levels — avoid tricky obstacles, collect sparkling stars, and keep the run going as long as you can. Quick reflexes and smart moves pay off — how far will your monster go?</p>','Mini Monster Run – Dash, Dodge & Collect Stars | Play Now on GamesCookie','monster run, endless run, collect stars, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Run through colorful worlds, avoid obstacles, and collect stars in this cute monster adventure. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-10-31 13:23:30','2025-12-12 10:44:54'),(20,'Car Traffic Racing','car-traffic-racing','uploads/games/1762845273917.png',2,'https://games.gamescookie.com/car-traffic-racing/','<p>Hit the road and weave through the traffic in Car Traffic Racing! Speed through busy highways, and dodge cars as you race to the top of the leaderboard. Stay focused — one wrong move and the ride’s over!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Drag to move your car left or right</li><li>Avoid hitting other vehicles on the road</li><li>The longer you survive, the faster the traffic gets</li><li>Stay sharp, keep racing, and set a new high score! 🏁</li></ul>','Car Traffic Racing – Dodge Cars & Race Fast | Play Now on GamesCookie','traffic racing game, car dodge, endless driving, highway racer, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Speed through traffic and avoid collisions in this endless car racing challenge. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:06:47','2025-12-12 10:47:25'),(21,'ZigZag Color Line ','zigzag-color-line','uploads/games/1761977322564.png',6,'https://games.gamescookie.com/zigzag-color/','<p>Enter a world of color and precision in Zigzag Color Line! Control a moving ball that zigzags along the path — but only cross the line whe trehe ball color matches the color section ahead. React fast, time your moves perfectly, and keep going as the speed increases!</p>','Zigzag Color Line – Match Ball Color & Cross Lines | Play Now on GamesCookie','color line game, zigzag color, match color, tap timing, reflex games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Roll the ball in zigzag motion and cross only matching color lines. Fast, colorful reflex fun. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:08:42','2025-12-12 10:55:21'),(22,'Crazy Flappy Dove','crazy-flappy-dove','uploads/games/1761977419170.png',6,'https://games.gamescookie.com/flappy-dove/','<p>Get ready to flap through the forest in Crazy Flappy Dove! Guide your daring dove as it soars between trees, dodging tricky gaps and tight spaces. The farther you fly, the higher your score — but one wrong flap, and it’s back to the start!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Tap to make the dove flap its wings and stay in the air</li><li>Navigate between gaps in the trees without crashing</li><li>The longer you survive, the faster and tougher the game gets</li><li>Keep flying to earn points and beat your best score! 🌲💫</li></ul>','Crazy Flappy Dove – Free Online Endless Runner Game | Play Now on GamesCookie','crazy flappy dove, endless runner game, flappy style game, bird run game, reflex games, arcade games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Guide the fast-running dove through obstacles in this intense endless-runner challenge. Play Crazy Flappy Dove online without downloads.',1,'2025-11-01 06:10:19','2025-12-12 11:52:40'),(23,'Cup and Ball','cup-and-ball','uploads/games/1761977954406.png',4,'https://games.gamescookie.com/cup-and-ball/','<p>Get ready to test your aim and precision in Cup and Ball! Launch the ball and try to land it perfectly inside the cup. Sounds simple? Think again — timing, angle, and power all matter! Hit the cup to score and move to tougher, trickier levels.</p>','Cup and Ball – Aim & Drop The Ball in the Cup | Play Now on GamesCookie','cup and ball, aim game, precision drop, strategy game, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Aim carefully and drop the ball into the cup. A clean skill-based precision challenge perfect for all ages. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:19:14','2025-12-12 11:01:26'),(24,'Dino Run Adventure','dino-run-adventure','uploads/games/1761977997892.png',5,'https://games.gamescookie.com/dino-run-adventure/','<p>Embark on a wild forest journey in Dino Run Adventure! Guide your speedy dino through dense woods as you dodge sharp cacti, swooping birds, and other tricky obstacles. It’s a test of timing, reflexes, and focus — how far can your dino go before the adventure ends?</p>','Dino Run Adventure – Dash, Jump & Survive | Play Now on GamesCookie','dino run, dinosaur game, endless runner, jump and dodge, action games, adventure games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Run through the forest, dodge cacti and birds, and test your reflexes in this classic dino run challenge. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:19:58','2025-12-12 11:05:25'),(25,'Emoji Buster','emoji-buster','uploads/games/1761978071672.png',2,'https://games.gamescookie.com/emoji-buster/','<p>Get ready for some slicing fun in Emoji Buster! Throw knives to burst spinning emojis and clear every level. Each perfect hit adds more knives to your arsenal — but 3 wrong throws and it’s game over! Aim carefully, time your shots, and become the ultimate emoji slayer!</p>','Emoji Buster – Throw Knives & Burst Emojis | Play Now on GamesCookie','emoji buster, knife throw game, emoji burst, tap to shoot, shooting games, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Aim and throw knives at emojis. Burst them all as your knife count increases with each hit. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:21:12','2025-12-12 11:09:09'),(26,'Emoji Crushed','emoji-crushed','uploads/games/1761978256072.png',4,'https://games.gamescookie.com/emoji-crushed/','<p>Dive into a fun world of matching emojis in Emoji Crushed! Tap to crush groups of same-colored emojis and rack up points before the screen fills up. The more you match, the higher your score — but don’t let the red line reach the top, or it’s game over!</p>','Emoji Crushed – Match Same Color Emoji | Play Now on GamesCookie','emoji crushed, tap match game, emoji puzzle, color match, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Tap to match same-color emojis and clear the board before the red line reaches the top. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:24:16','2025-12-12 11:10:23'),(27,'Flappy Color Birds','flappy-color-birds','uploads/games/1761979083096.png',6,'https://games.gamescookie.com/flappy-color-birds/','<p>Fly through a colorful challenge in Flappy Color Bird! Guide your bird as it flaps up and down, crossing through vertical color bars that match its own color. Precision and timing are everything — keep flapping, matching, and flying to beat your high score! 🎯💫</p>','Flappy Color Bird – Fly & Match Colors | Play Now on GamesCookie','flappy color bird, flying puzzle, color match bird, reflex games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Flap the bird through vertical color bars by matching the bird’s color with the right section. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:38:03','2025-12-12 11:12:16'),(28,'Gravity Ball','gravity-ball','uploads/games/1761979179012.png',2,'https://games.gamescookie.com/gravity-ball/','<p>Prepare for an arcade-style gravity challenge in Gravity Ball! Control a ball as you navigate through shifting paths and obstacles by manipulating gravity itself. Timing and reflexes are everything — stay focused, avoid the hazards, and spin your way to the top score.</p>','Gravity Ball – Tilt, Jump & Avoid Obstacles | Play Now on GamesCookie','gravity ball game, avoid obstacles, ball arcade, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Navigate the ball using gravity, dodge obstacles, and stay on the path in this arcade skill challenge. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:39:39','2025-12-12 11:13:32'),(29,'Merge Emoji','merge-emoji','uploads/games/1761979214675.png',4,'https://games.gamescookie.com/merge-emoji/','<p>Get ready for a burst of fun and creativity in Merge Emoji! Combine matching emojis to unlock brand-new expressions and discover endless surprises. Every merge brings something new — It’s simple, colorful, and super addictive!</p>','Merge Emoji – Combine Emojis & Unlock New Ones | Play Now on GamesCookie','merge emoji, merge puzzle, emoji combine, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Drag and merge matching emojis to discover new ones. A fun and satisfying merge puzzle game. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-01 06:40:14','2025-12-12 12:44:18'),(30,'Car Rush','car-rush','uploads/games/1762846208380.png',2,'https://games.gamescookie.com/car-rush/','<p>Buckle up and hit the gas in Car Rush! Race through winding roads, overtake traffic, and beat the clock to reach the finish line before time runs out. With smooth controls and exciting speed, it’s the ultimate rush for racing lovers!</p><p><br></p><p>🕹️ How to Play</p><p><br></p><ul><li>Use arrow keys to control your car:</li><li class=\"ql-indent-1\">Up Arrow (↑) → Accelerate</li><li class=\"ql-indent-1\">Down Arrow (↓) → Brake</li><li class=\"ql-indent-1\">Left/Right Arrows (←/→) → Steer your car</li></ul><p><br></p><ul><li>Avoid crashing into other vehicles or obstacles</li><li>Reach the finish line before time runs out to win!</li><li>Drive fast, stay sharp, and feel the rush! 🚗💨</li></ul>','Car Rush – Race to the Finish Before Time Ends | Play Now on GamesCookie','car rush game, racing game, time challenge, car driving, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Use arrow keys to steer, accelerate, and brake. Reach the finish line before the timer runs out. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-11 07:30:08','2025-12-12 13:37:25'),(31,'Gems Crush','gems-crush','uploads/games/1762846323691.png',4,'https://games.gamescookie.com/gems-crush','<p>Enter a dazzling world of gems and colors in Gems Crush! Match and crush shining jewels to clear the board and earn massive points. Chain together combos, trigger power gems, and watch the explosions light up your screen! It’s simple, addictive, and endlessly satisfying.</p>','Gems Crush – Match 3 Shiny Gems | Play Now on GamesCookie','gems crush, gem match, match 3 puzzle, jewel game, puzzle games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Swap and match 3 or more gems to clear levels and trigger powerful combos. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-11 07:32:03','2025-12-12 13:40:47'),(32,'Puzzle Emoji','puzzle-emoji','uploads/games/1762846375933.png',4,'https://games.gamescookie.com/puzzlemoji/','<p>Put your brain to the test in Puzzle Emoji! Every emoji must touch every space — complete the grid to finish the level! It’s a fun and satisfying puzzle challenge that gets trickier as you go.</p>','Puzzle Emoji – Connect Matching Emojis | Play Now on GamesCookie','puzzle emoji, emoji connect, fill the grid, puzzle games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Connect matching emojis and fill all spaces on the board to complete each level. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-11 07:32:56','2025-12-12 13:42:59'),(33,'Rocket Space','rocket-space','uploads/games/1762846427831.png',5,'https://games.gamescookie.com/rocket-space/','<p>Blast through the cosmos in Rocket Space! Dodge flying meteors, weave through asteroid fields, and collect stars as you soar across endless space. Stay sharp — one wrong move and your rocket will be space dust! It’s fast, thrilling, and out of this world. 🌌</p>','Rocket Space – Dodge Meteors & Race Through Space | Play Now on GamesCookie','Rocket space game, meteor dodge, space racing, action games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Fly through space, dodge meteors, collect stars, and see how far you can go in this endless cosmic racer. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-11 07:33:47','2025-12-12 13:45:55'),(34,'Running Ninja','running-ninja','uploads/games/1762846484523.png',2,'https://games.gamescookie.com/running-ninja/','<p>Dash through danger in Running Ninja! Sprint at full speed across rugged terrain, jump over deep gaps, and use quick double jumps to stay ahead. Precision, speed, and perfect timing make the difference — push your limits and keep the run alive! 🥷🔥</p>','Running Ninja – Fast Jump & Double Jump Run | Play Now on GamesCookie','running ninja, ninja run, double jump game, adventure games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Fly through space, dodge meteors, collect stars, and see how far you can go in this endless cosmic racer. Free to play on GamesCookie. Play instantly online. No download needed.',1,'2025-11-11 07:34:44','2025-12-12 13:51:03'),(35,'Tiles Master','tiles-master','uploads/games/1762846543414.png',4,'https://games.gamescookie.com/tiles-master/','<p>Sharpen your mind with Tiles Master! Match identical tiles by connecting pairs and clear the board before time runs out. Simple to play but hard to master — every level challenges your memory, focus, and speed. Can you become the true Tiles Master? 🧠✨</p>','Tiles Master – Tile Matching Puzzle Game | Play Now on GamesCookie','tiles master, tile matching puzzle, onet connect game, match tiles online, puzzle games, h5 games, html5 games, online games, browser games, free games, skill based games, casual games','Connect matching tiles and clear the board in Tiles Master, a relaxing and strategic puzzle inspired by classic Onet gameplay. Play instantly online. No download needed.',1,'2025-11-11 07:35:43','2025-12-13 01:42:16');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herosliders`
--

DROP TABLE IF EXISTS `herosliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `herosliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herosliders`
--

LOCK TABLES `herosliders` WRITE;
/*!40000 ALTER TABLE `herosliders` DISABLE KEYS */;
INSERT INTO `herosliders` VALUES (1,'Pac-Rat','fa-ghost','The rat’s hungry, the cats are angry — it’s a cheesy showdown!','https://gamescookie.com/game/17/pac-rat','uploads/slider/1761917041286.png',1,'2025-10-31 13:24:01','2025-11-02 15:57:34'),(2,'Rolling Ball','fa-gem','One slip and it’s a tumble! Stay sharp and keep that ball rolling!','https://gamescookie.com/game/16/rolling-ball','uploads/slider/1761918060237.png',1,'2025-10-31 13:41:00','2025-11-02 15:57:09'),(3,'Air Hockey','fa-person-running','One puck, two goals — who’ll be the ultimate champ?','https://gamescookie.com/game/1/air-hockey','uploads/slider/1761918274774.png',1,'2025-10-31 13:44:34','2025-11-02 15:56:57');
/*!40000 ALTER TABLE `herosliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hometrendings`
--

DROP TABLE IF EXISTS `hometrendings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hometrendings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gameId` int DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gameId` (`gameId`),
  CONSTRAINT `hometrendings_ibfk_1` FOREIGN KEY (`gameId`) REFERENCES `games` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hometrendings`
--

LOCK TABLES `hometrendings` WRITE;
/*!40000 ALTER TABLE `hometrendings` DISABLE KEYS */;
INSERT INTO `hometrendings` VALUES (1,7,'Pro',1,'2025-10-31 13:50:46','2025-10-31 13:50:46'),(2,1,'Hot',1,'2025-10-31 13:51:08','2025-10-31 13:51:08'),(3,10,'New',1,'2025-10-31 13:51:38','2025-10-31 13:51:38'),(4,2,'Hot',0,'2025-10-31 15:58:34','2025-11-11 07:36:26'),(5,13,'Top',1,'2025-10-31 15:58:42','2025-10-31 15:58:42'),(6,12,'Pro',1,'2025-11-11 07:36:50','2025-11-11 07:36:50'),(7,15,'Pro',1,'2025-11-11 07:38:54','2025-11-11 07:38:54'),(8,23,'New',1,'2025-11-11 07:39:41','2025-11-11 07:39:41');
/*!40000 ALTER TABLE `hometrendings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metatags`
--

DROP TABLE IF EXISTS `metatags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metatags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metatags`
--

LOCK TABLES `metatags` WRITE;
/*!40000 ALTER TABLE `metatags` DISABLE KEYS */;
INSERT INTO `metatags` VALUES (1,'Play Free Online Games Instantly | GamesCookie','gamescookie, free online games, html5 games, instant play games, browser games, mobile friendly games, no download','GamesCookie is a free-to-play online games website for users across all age groups, designed for instant gaming on mobile as well as desktop. Play instantly with no downloads and enjoy fun, fast, and mobile-friendly games for all ages.','home','2025-11-25 16:22:06','2026-01-04 00:51:23'),(2,'Free Online Games | Play HTML5 Games on GamesCookie','free online games, html5 games, browser games, play games online, gamescookie games','Play free online HTML5 games on GamesCookie. Discover a wide collection of casual, arcade, puzzle, reflex, adventure, sports, and action games playable instantly on any device.','games','2025-11-25 16:22:19','2026-01-04 00:48:32'),(3,'My Profile | GamesCookie – Track Your Games & Activity','gamescookie profile, user profile games, gaming account, online games profile, play history games','Access your GamesCookie profile to manage your gaming activity, track recently played games, update your username, update your display picture, and enjoy a personalized free online gaming experience.','profile','2025-11-25 16:23:35','2026-01-04 00:47:27'),(4,'About GamesCookie | Free Online Games Platform','about gamescookie, free games, online games, html5 games website, h5 games, instant play games, browser games platform','GamesCookie is a free online gaming platform offering instant-play HTML5 games for desktop and mobile. Enjoy casual, arcade, puzzle, sports, and action games anytime.','about','2025-11-25 16:23:44','2026-01-04 00:43:28'),(5,'Privacy Policy | GamesCookie – Your Data & Privacy Protection','gamescookie privacy policy, online games privacy, user data protection, gaming website privacy','GamesCookie values your privacy. Learn how we collect, use, and protect user information while you enjoy free online HTML5 games on our platform.','privacy','2025-11-25 16:24:00','2026-01-04 00:40:16'),(6,'Terms of Use | GamesCookie – Rules & Conditions for Playing Games','gamescookie terms of use, gaming website terms, online games rules, html5 games terms, gamescookie policies','Read the Terms of Use for GamesCookie to understand the rules, conditions, and guidelines for using our free online gaming platform and playing HTML5 games safely.','terms','2025-11-25 16:24:12','2026-01-04 00:39:39');
/*!40000 ALTER TABLE `metatags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `initial` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `token` mediumtext,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','register','po_112','PO','10.jpeg','info.gurpreetsaini@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTc2NzA4ODAyNCwiZXhwIjoxNzY5NjgwMDI0fQ.hnoO5bVvooadbiurI6W2j-gfV9nFmgkSlzwbCA9fZzw',1,'2025-10-29 07:57:51','2025-12-30 09:47:04'),(2,'admin','register','GamesCookie','GA','6.jpeg','gamescookiegc@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsImlhdCI6MTc2NzI2MTY0MywiZXhwIjoxNzY5ODUzNjQzfQ.wYCs9T-sejd6NS906_MH89ED86xQhvmlyvk0ojaTKWc',1,'2025-10-30 10:59:16','2026-01-01 10:00:43'),(3,'user','register','SH','SH',NULL,'shiprasingh9136@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTc2NDMwNDk0NywiZXhwIjoxNzY2ODk2OTQ3fQ.67lwWvY2Wby4VXNLDzvAEajwXdyQFblEmxO6Wodbg3c',1,'2025-11-03 08:50:51','2025-11-28 04:42:27'),(4,'user','register','UN','UN',NULL,'unpredictablenikita@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsImlhdCI6MTc2MjQwMDA1MywiZXhwIjoxNzY0OTkyMDUzfQ.Qy19bVSUXIxqB37KUCjoxODmAc0oceeeX4a_3lHeeVU',1,'2025-11-06 03:33:05','2025-11-06 03:34:13'),(5,'user','register','NI','NI',NULL,'nikitagoyal75@gmail.com',NULL,'136772',NULL,1,'2025-11-10 08:22:53','2025-11-10 08:38:13'),(6,'user','register','UN','UN',NULL,'unpredictible.anshika@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYsImlhdCI6MTc2MjkzMTYwNSwiZXhwIjoxNzY1NTIzNjA1fQ.Fj5HGy-B73H7fR7FsOiH2PyeOh-j1V_SQcnY146XUSY',1,'2025-11-12 07:12:32','2025-11-12 07:13:25'),(7,'user','register','NA','NA','1.jpeg','nainaahuja22@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsImlhdCI6MTc2NDAwMjc3OSwiZXhwIjoxNzY2NTk0Nzc5fQ.n44hVxOHU75KgmJ70Ke2jVd2DB2vj3qMRbrqJogfNSs',1,'2025-11-24 16:45:41','2025-11-24 16:46:19'),(8,'user','register','PO','PO','1.jpeg','poonamnariyani63.pn@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgsImlhdCI6MTc2NDAwODU0MCwiZXhwIjoxNzY2NjAwNTQwfQ.iIsiSRmpY794pp2goWMQtZ8V223-K5ZOfywnQ1ZbVq8',1,'2025-11-24 18:21:52','2025-11-24 18:22:20'),(9,'user','register','Kandari_boi','KA','1.jpeg','sameerpetshow@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTc2NjI0MjU5NywiZXhwIjoxNzY4ODM0NTk3fQ.gds3pmxITOTnKURiQluPBCNWU_PHLYmHddn79WuKANo',1,'2025-12-20 14:56:16','2025-12-20 14:56:57'),(10,'user','register',NULL,'SA','1.jpeg','sameer12business@gmail.com',NULL,'','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJpYXQiOjE3NjY0NzM5NjYsImV4cCI6MTc2OTA2NTk2Nn0.H3wxPYwc2S3dHkJvjPyyiQJSnCaxJsAJLTjfgklLZ88',1,'2025-12-23 07:11:07','2025-12-23 07:12:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12  7:32:56

