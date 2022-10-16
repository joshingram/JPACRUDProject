-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema guitarplayersdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `guitarplayersdb` ;

-- -----------------------------------------------------
-- Schema guitarplayersdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `guitarplayersdb` DEFAULT CHARACTER SET utf8 ;
USE `guitarplayersdb` ;

-- -----------------------------------------------------
-- Table `player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player` ;

CREATE TABLE IF NOT EXISTS `player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `guitar_brand` VARCHAR(45) NULL,
  `birth_place` VARCHAR(100) NULL,
  `birth_country` VARCHAR(45) NULL,
  `birth_day` DATE NULL,
  `deceased_day` DATE NULL,
  `remarks` VARCHAR(500) NULL,
  `image_url` VARCHAR(3000) NULL,
  `video_url` VARCHAR(400) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS gpuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'gpuser'@'localhost' IDENTIFIED BY 'gpuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gpuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `player`
-- -----------------------------------------------------
START TRANSACTION;
USE `guitarplayersdb`;
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (1, 'Eddie', 'Van Halen', 'Frankenstrat', 'Amsterdam', 'Netherlands', '1955-01-26', '2020-10-06', 'Best known as lead guitar for Van Halen, his two-handed arpeggios, and his famous \"brown sound.\"', 'https://images.squarespace-cdn.com/content/v1/58e8ccfff5e231a18a2fd4b6/1508241163596-61Q0EDFX056FBTGJ9W45/VAN-000000-0049.jpg?format=500w', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RLsEvZgmRVA?start=637\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (2, 'Jimi', 'Hendrix', 'Stratocaster', 'Seattle, WA', 'USA', '1942-11-27', '1970-09-18', 'The former US Army paratrooper who revolutionized electric guitar tone while simultaneously playing rhythm and melody.  As a left handed guitarist, Hendrix is well known for playing an upside-down right handed guitar which he restrung to be in normal order.', 'https://render.fineartamerica.com/images/rendered/default/poster/8/10/break/images/artworkimages/medium/2/photo-of-jimi-hendrix-and-jimi-hendrix-david-redfern.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-nXQgjJSUIo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (3, 'Brian', 'May', 'Red Special', 'Hampton', 'UK', '1947-07-19', NULL, 'Best known as the guitarist for Queen, May and his father built his signature guitar which he often played with a coin instead of a pick.  May holds a PhD in Astrophysics.', 'https://i.pinimg.com/564x/3f/ef/78/3fef7817a8969879389fae966b4245a3.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5UPdos1iHsM?start=6176\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (4, 'Tom', 'Scholz', 'Les Paul', 'Toledo, OH', 'USA', '1947-03-10', NULL, 'Scholz wrote and performed many of parts for the studio versions of Boston\'s songs using effects he designed and built using his master\'s degree from MIT.  He then sold many these under his RockMan brand.', 'http://www.effectsbay.com/wp-content/uploads/2017/03/tom-scholz.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4N7qdcBJzJs?start=282\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (5, 'Stevie Ray', 'Vaughan', 'Stratocaster', 'Dallas, TX', 'USA', '1954-10-03', '1990-08-27', 'The high school drop-out that couldn\'t read music who became an icon of blues and rock as the frontman for Double Trouble.  Vaughan\'s Number One Strat had a left-handed bridge resulting in the tremolo arm being on top in a similar arrangement to Hendrix\'s upside-down guitar.', 'https://render.fineartamerica.com/images/rendered/default/poster/8/10/break/images/artworkimages/medium/2/srv-performing-in-davis-larry-hulst.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cFwTbsKkqxE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (6, 'John', 'Mayer', 'Stratocaster', 'Bridgeport, CT', 'USA', '1977-10-16', NULL, 'While his rise to fame was fueled by primarily accoustic pop songs, Mayer\'s signature tone came from his electric guitar.  Once called a <a href=\"https://youtu.be/tzfrXiD1_Rg?t=50\" target=\"_blank\">\"master\"</a> by Eric Clapton, Mayer now has a range of signature guitars from Paul Reed Smith.', 'https://cdn.fansshare.com/image/johnmayer/black-and-white-john-mayer-wallpapers-john-mayer-991762396.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/32GZ3suxRn4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (7, 'Brad', 'Paisely', 'Telecaster', 'Glen Dale, WV', 'USA', '1972-10-28', NULL, 'Perhaps most known for his humorous lyrics on songs such as [Check you for] \"Ticks,\" \"I\'m Gonna Miss Her,\" and \"Celebrity,\"  he is also well recognized as a guitar player, often using models equiped with a G bender.  What\'s a G bender?  Hear it in his own <a href=\"https://www.youtube.com/watch?v=4OKZQSAIiyc&t=180s\" target=\"_blank\">words</a>.', 'https://media.gettyimages.com/photos/singersongwriter-brad-paisley-brings-his-2016-life-amplified-world-picture-id589316734?k=20&m=589316734&s=612x612&w=0&h=2gPas6S7L7iFByLcmVzJjFQIZgVrPJai5loRuMAoyKQ=', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uuui6WJfd0k?start=37\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

COMMIT;

