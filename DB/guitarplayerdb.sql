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
  `remarks` VARCHAR(2000) NULL,
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
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (1, 'Eddie', 'Van Halen', 'Frankenstrat', 'Amsterdam', 'Netherlands', '1955-01-26', '2020-10-06', 'Best known as lead guitar for Van Halen, his two-handed arpeggios, and his famous \"brown sound.\"', 'https://images.squarespace-cdn.com/content/v1/58e8ccfff5e231a18a2fd4b6/1508241163596-61Q0EDFX056FBTGJ9W45/VAN-000000-0049.jpg?format=500w', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RLsEvZgmRVA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (2, 'Jimi', 'Hendrix', 'Stratocaster', 'Seattle, WA', 'USA', '1942-11-27', '1970-09-18', 'Former US Army paratrooper known for revolutionizing electric guitar tone and simultaneously playing rhythm and melody.', 'https://render.fineartamerica.com/images/rendered/default/poster/8/10/break/images/artworkimages/medium/2/photo-of-jimi-hendrix-and-jimi-hendrix-david-redfern.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-nXQgjJSUIo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (3, 'Brian', 'May', 'Red Special', 'Hampton', 'UK', '1947-07-19', NULL, 'Best known as the guitarist for Queen, Brian and his father built his signature guitar which he often played with a coin instead of a pick.  Brian holds a PhD in Astrophysics.', 'https://images.squarespace-cdn.com/content/v1/536ea5cbe4b074eafa4feea0/1499043935717-TJXIN4WO7GKVVBAYKMPV/Tom+Callins+Brian+May.jpg?format=1500w', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5UPdos1iHsM?start=6176\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (4, 'Tom', 'Scholz', 'Les Paul', 'Toledo, OH', 'USA', '1947-03-10', NULL, 'Tom wrote and performed nearly all parts for the studio versions of Boston\'s songs using effects he designed and built using his master\'s degree from MIT.', 'http://www.effectsbay.com/wp-content/uploads/2017/03/tom-scholz.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4N7qdcBJzJs?start=282\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (5, 'Stevie Ray', 'Vaughan', 'Stratocaster', 'Dallas, TX', 'USA', '1954-10-03', '1990-08-27', 'Known as the frontman for Double Trouble, Stevie died in a helicopter crash.  ', 'https://render.fineartamerica.com/images/rendered/default/poster/8/10/break/images/artworkimages/medium/2/srv-performing-in-davis-larry-hulst.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cFwTbsKkqxE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`, `video_url`) VALUES (6, 'John', 'Mayer', 'Stratocaster', 'Bridgeport, CT', 'USA', '1977-10-16', NULL, 'While his early work heavily featured accoustic work, John\'s signature tone came from his electric guitar.  John now has a range of signature guitars from Paul Reed Smith.', 'https://cdn.fansshare.com/image/johnmayer/black-and-white-john-mayer-wallpapers-john-mayer-991762396.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/32GZ3suxRn4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

COMMIT;

