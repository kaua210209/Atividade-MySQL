-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema aula2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aula2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aula2` DEFAULT CHARACTER SET utf8 ;
USE `aula2` ;

-- -----------------------------------------------------
-- Table `mydb`.`tabCid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula2`.`tabCid` (
  `codCid` INT NOT NULL AUTO_INCREMENT,
  `nomeCid` VARCHAR(45) NULL,
  PRIMARY KEY (`codCid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tabCli`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula2`.`tabCli` (
  `codCli` INT NOT NULL AUTO_INCREMENT,
  `nomeCli` VARCHAR(45) NULL,
  `endCli` VARCHAR(45) NULL,
  `bairroCli` VARCHAR(45) NULL,
  `cpfCli` VARCHAR(45) NULL,
  `datanascCli` VARCHAR(45) NULL,
  `cepCli` VARCHAR(45) NULL,
  `tabCid_codCid1` INT NOT NULL,
  PRIMARY KEY (`codCli`),
  UNIQUE INDEX `cpfCli_UNIQUE` (`cpfCli` ASC) VISIBLE,
  INDEX `fk_tabCli_tabCid1_idx` (`tabCid_codCid1` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

show tables;
describe tabCli;
insert into tabCli (codCli, nomeCli, endCli, bairroCli, cpfCli, datanascCli, cepCli, tabCid_codCid1) values (1, 'Reinaldo','Muriaé', 'Rua de bairro', '111-000', '1994/02/10', '54555', 1);
select * from tabCli;