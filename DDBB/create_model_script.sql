SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`paciente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`paciente` (
  `pac_id` INT NOT NULL,
  `pac_nombre` VARCHAR(45) NULL,
  `pac_apellido1` VARCHAR(45) NULL,
  `pac_apellido2` VARCHAR(45) NULL,
  PRIMARY KEY (`pac_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`profesional`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`profesional` ;

CREATE TABLE IF NOT EXISTS `mydb`.`profesional` (
  `pro_id` INT NOT NULL,
  `pro_nombre` VARCHAR(45) NULL,
  `pro_apellido1` VARCHAR(45) NULL,
  `pro_apellido2` VARCHAR(45) NULL,
  `pro_email` VARCHAR(45) NULL,
  `pro_password` VARCHAR(45) NULL,
  PRIMARY KEY (`pro_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`atencion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`atencion` ;

CREATE TABLE IF NOT EXISTS `mydb`.`atencion` (
  `ate_fecha` DATE NOT NULL,
  `ate_obs` VARCHAR(255) NULL,
  `pac_id` INT NOT NULL,
  `pro_id` INT NOT NULL,
  PRIMARY KEY (`ate_fecha`),
  INDEX `fk_atencion_paciente_idx` (`pac_id` ASC),
  INDEX `fk_atencion_profesional1_idx` (`pro_id` ASC),
  CONSTRAINT `fk_atencion_paciente`
    FOREIGN KEY (`pac_id`)
    REFERENCES `mydb`.`paciente` (`pac_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_atencion_profesional1`
    FOREIGN KEY (`pro_id`)
    REFERENCES `mydb`.`profesional` (`pro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
