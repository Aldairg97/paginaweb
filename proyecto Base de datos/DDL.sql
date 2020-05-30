/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.5 		*/
/*  Created On : 14-may.-2020 19:18:01 				*/
/*  DBMS       : MySql 						*/
/* ---------------------------------------------------- */

SET FOREIGN_KEY_CHECKS=0 
;

/* Drop Tables */

DROP TABLE IF EXISTS `Compra` CASCADE
;

DROP TABLE IF EXISTS `Producto` CASCADE
;

DROP TABLE IF EXISTS `Proveedor` CASCADE
;

DROP TABLE IF EXISTS `Usuario` CASCADE
;

DROP TABLE IF EXISTS `Venta` CASCADE
;

/* Create Tables */

CREATE TABLE `Compra`
(
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`PK_FK_Codigo_Producto` VARCHAR(50) NOT NULL,
	`PK_FK_Rut_Proveedor` VARCHAR(50) NOT NULL,
	`Precio` VARCHAR(50) NULL,
	`Fecha` VARCHAR(50) NULL,
	`Cantidad` VARCHAR(50) NULL,
	CONSTRAINT `PK_Compra` PRIMARY KEY (`id` ASC)
)

;

CREATE TABLE `Producto`
(
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`pk_Codigo_Barra` VARCHAR(10) NOT NULL,
	`Nombre` VARCHAR(50) NULL,
	`Precio` VARCHAR(50) NULL,
	`Impuesto` VARCHAR(50) NULL,
	`Familia` VARCHAR(50) NULL,
	`Costo` VARCHAR(50) NULL,
	CONSTRAINT `PK_Codigo_Barra` PRIMARY KEY (`pk_Codigo_Barra` ASC)
)

;

CREATE TABLE `Proveedor`
(
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`PK_Rut` VARCHAR(50) NOT NULL,
	`Nombre` VARCHAR(50) NULL,
	`Vendedor` VARCHAR(50) NULL,
	`Telefono` VARCHAR(50) NULL,
	`Minimo` INT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`id` ASC)
)

;

CREATE TABLE `Usuario`
(
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`PK_Rut` VARCHAR(50) NOT NULL,
	`Nombre` VARCHAR(50) NULL,
	`Rol` VARCHAR(50) NULL,
	`Password` VARCHAR(50) NULL,
	CONSTRAINT `id` PRIMARY KEY (`id` ASC)
)

;

CREATE TABLE `Venta`
(
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`Pk_FK_Codigo_Barra` VARCHAR(50) NOT NULL,
	`PK_FK_Rut_Usuario` VARCHAR(50) NOT NULL,
	`Precio` VARCHAR(50) NULL,
	`Fecha` VARCHAR(50) NULL,
	`No._Boleta` INT NULL,
	`Cantidad` VARCHAR(50) NULL,
	CONSTRAINT `PK_Venta` PRIMARY KEY (`id` ASC)
)

;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE `Compra` 
 ADD INDEX `IXFK_Compra_Proveedor` (`id` ASC)
;

ALTER TABLE `Producto` 
 ADD INDEX `IXFK_Producto_Compra` (`id` ASC)
;

ALTER TABLE `Venta` 
 ADD INDEX `IXFK_Venta_Usuario` (`id` ASC)
;

ALTER TABLE `Venta` 
 ADD INDEX `IXFK_Venta_Usuario_02` (`id` ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE `Compra` 
 ADD CONSTRAINT `FK_Compra_Proveedor`
	FOREIGN KEY (`id`) REFERENCES `Proveedor` (`id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Compra` 
 ADD CONSTRAINT `PK_FK_Rut_Proveedor`
	FOREIGN KEY () REFERENCES  () ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE `Producto` 
 ADD CONSTRAINT `FK_Producto_Compra`
	FOREIGN KEY (`id`) REFERENCES `Compra` (`id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Producto` 
 ADD CONSTRAINT `FK_Producto_Venta`
	FOREIGN KEY (`id`) REFERENCES `Venta` (`id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Venta` 
 ADD CONSTRAINT `FK_Venta_Usuario`
	FOREIGN KEY (`id`) REFERENCES `Usuario` (`id`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Venta` 
 ADD CONSTRAINT `PK_Codigo_Barra`
	FOREIGN KEY (`Pk_FK_Codigo_Barra`, `PK_FK_Rut_Usuario`) REFERENCES  () ON DELETE No Action ON UPDATE No Action
;

SET FOREIGN_KEY_CHECKS=1 
;
