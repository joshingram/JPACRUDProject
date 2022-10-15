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
  `image_url` VARCHAR(2000) NULL,
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
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (1, 'Eddie', 'Van Halen', 'Frankenstrat', 'Amsterdam', 'Netherlands', '1955-01-26', '2020-10-06', NULL, 'Best known as lead guitar for Van Halen, his two-handed arpeggios, and his famous \"brown sound.\"');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (2, 'Jimi', 'Hendrix', 'Stratocaster', 'Seattle, WA', 'USA', '1942-11-27', '1970-09-18', '', 'Former US Army paratrooper known for revolutionizing electric guitar tone and simultaneously playing rhythm and melody.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (3, 'Brian', 'May', 'Red Special', 'Hampton', 'UK', '1947-07-19', NULL, '', 'Best known as the guitarist for Queen, Brian and his father built his signature guitar which he often played with a coin instead of a pick.  Brian holds a PhD in Astrophysics.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (4, 'Tom', 'Scholz', 'Les Paul', 'Toledo, OH', 'USA', '1947-03-10', NULL, NULL, 'Tom wrote and performed nearly all parts for the studio versions of Boston\'s songs using effects he designed and built using his master\'s degree from MIT.');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (5, 'Stevie Ray', 'Vaughan', 'Stratocaster', 'Dallas, TX', 'USA', '1954-10-03', '1990-08-27', NULL, 'Known as the frontman for Double Trouble, Stevie died in a helicopter crash.  ');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `guitar_brand`, `birth_place`, `birth_country`, `birth_day`, `deceased_day`, `remarks`, `image_url`) VALUES (6, 'John', 'Mayer', 'Stratocaster', 'Bridgeport, CT', 'USA', '1977-10-16', NULL, NULL, 'While his early work heavily featured accoustic work, John\'s signature tone came from his electric guitar.  John now has a range of signature guitars from Paul Reed Smith.');

COMMIT;

