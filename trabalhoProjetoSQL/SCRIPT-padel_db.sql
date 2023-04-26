-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema padel_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema padel_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `padel_db` DEFAULT CHARACTER SET utf8 ;
USE `padel_db` ;

-- -----------------------------------------------------
-- Table `padel_db`.`Jogador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `padel_db`.`Jogador` (
  `idJogador` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `apelido` VARCHAR(45) NULL,
  `posicao` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idJogador`),
  INDEX `INDEX` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `padel_db`.`Torneio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `padel_db`.`Torneio` (
  `idTorneio` INT NOT NULL AUTO_INCREMENT,
  `clube` VARCHAR(45) NULL,
  PRIMARY KEY (`idTorneio`),
  INDEX `INDEX` (`clube` ASC) INVISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `padel_db`.`Jogador_Torneio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `padel_db`.`Jogador_Torneio` (
  `idJogador_Torneio` INT NOT NULL AUTO_INCREMENT,
  `Jogador_idJogador_D` INT NOT NULL,
  `Jogador_idJogador_R` INT NOT NULL,
  `Torneio_idTorneio` INT NOT NULL,
  `mesAno` VARCHAR(7) NOT NULL,
  PRIMARY KEY (`idJogador_Torneio`),
  INDEX `fk_Jogador_Torneio_Jogador_idx` (`Jogador_idJogador_D` ASC) VISIBLE,
  INDEX `fk_Jogador_Torneio_Jogador1_idx` (`Jogador_idJogador_R` ASC) VISIBLE,
  INDEX `fk_Jogador_Torneio_Torneio1_idx` (`Torneio_idTorneio` ASC) VISIBLE,
  CONSTRAINT `fk_Jogador_Torneio_Jogador`
    FOREIGN KEY (`Jogador_idJogador_D`)
    REFERENCES `padel_db`.`Jogador` (`idJogador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogador_Torneio_Jogador1`
    FOREIGN KEY (`Jogador_idJogador_R`)
    REFERENCES `padel_db`.`Jogador` (`idJogador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogador_Torneio_Torneio1`
    FOREIGN KEY (`Torneio_idTorneio`)
    REFERENCES `padel_db`.`Torneio` (`idTorneio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
