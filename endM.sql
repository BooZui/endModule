CREATE DATABASE qlPhongTro;
USE qlPhongTro;
CREATE TABLE paymentMethod(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    code VARCHAR(255)
);
CREATE TABLE phongtro(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    phoneNumber VARCHAR(11),
    startDate DATE,
    paymentMethod BIGINT NOT NULL,
    note LONGTEXT,
    FOREIGN KEY (paymentMethod) REFERENCES paymentMethod(id)
);
INSERT INTO paymentMethod(name, code) VALUES
("by month", "byMonth"),
("by quarter", "byQuarter"),
("by year", "byYear");
