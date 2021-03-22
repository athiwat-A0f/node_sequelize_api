DROP TABLE IF EXISTS posts;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;



INSERT INTO posts(id,title,image,description,published,createdAt,updatedAt) VALUES(1,'Ko Kut','https://th.readme.me/f/28743/5dd4c0b5360e9b75fed70d98.jpg','Ko Kut is a district of Trat Province, eastern Thailand, consisting of a group of islands. With a population of about 2,000 it is the district with the smallest population of all ThailandKo Kut is a district of Trat Province, eastern Thailand, consisting ',1,'2021-03-21 00:00:00','2021-03-21 00:00:00'),(2,'Ko Lan','https://www.pattayacityevents.com/wp-content/uploads/elementor/thumbs/-01-o7lumf0a3fe1oad0uy4ek710btb4aez6kph3idomy0.jpg','Ko Lan is a small Thai island off the coast of Pattaya, in the Gulf of Thailand. It’s known for its beaches, set against a backdrop of wooded hills. In the north, Ta Waen Beach is dotted with restaurants and shops. A large, stingray-shaped building domina',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Ko Chang','https://www.chillpainai.com/src/wewakeup/scoop/images/ff424dd21c3ca2eb7221315c09ac045ff4f336f1.jpg','Ko Chang, one of the largest Thai islands in the Gulf of Thailand, contains dense, steep jungle. Mu Ko Chang National Park,',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Ko Lipe','https://th.readme.me/f/23441/5c946e616fd4d57f52364256.jpg','Ko Lipe is a Thai island in the Andaman Sea, near Malaysia\'s border. It\'s part of Tarutao National Marine Park, which is populated with small islands and known for its coral-rich watersKo Lipe is a Thai island in the Andaman Sea, near Malaysia\'s border. I',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');







