-- Connexion au serveur MySQL

mysql -h localhost:8889 -u root -p root

-- Création de la base de données

CREATE DATABASE IF NOT EXISTS reservation_movie_theaters;

-- Sélectionner la base de donnée pour créer les tables

USE reservation_movie_theaters;

-- Création des tables 

CREATE TABLE IF NOT EXISTS admins(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login VARCHAR(60) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS users(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login VARCHAR(60) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movie_theaters(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    zip INT(5) NOT NULL,
    user_id INT(11) NOT NULL,
    CONSTRAINT user_FK FOREIGN KEY(user_id) REFERENCES users(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movie_theater_admins(
    admin_id INT(11) NOT NULL,
    movie_theater_id INT(11) NOT NULL,
    PRIMARY KEY (admin_id, movie_theater_id),
    CONSTRAINT admin_FK FOREIGN KEY (admin_id) REFERENCES admins(id) ON DELETE CASCADE,
    CONSTRAINT movie_theater_FK FOREIGN KEY (movie_theater_id) REFERENCES movie_theaters(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movie_rooms (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    movie_room_number INT(2) NOT NULL,
    number_seats INT(4) NOT NULL,
    movie_theater_id INT(11) NOT NULL,
    CONSTRAINT unique_movie_theater_FK FOREIGN KEY (movie_theater_id) REFERENCES movie_theaters(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movies (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    synopsis TEXT NOT NULL,
    category VARCHAR(60)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movie_sessions (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    day DATE NOT NULL,
    hour TIME NOT NULL,
    movie_room_id INT(11) NOT NULL,
    movie_id INT(11) NOT NULL,
    CONSTRAINT movie_room_FK FOREIGN KEY (movie_room_id) REFERENCES movie_rooms(id),
    CONSTRAINT movie_FK FOREIGN KEY (movie_id) REFERENCES movies(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS customers (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    lastname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS pricings (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    price DECIMAL(4,2) NOT NULL,
    category VARCHAR(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS reservations (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    reservation_date DATETIME NOT NULL,
    payment_type VARCHAR(30) NOT NULL,
    payment_date DATETIME NOT NULL,
    customer_id INT(11) NOT NULL,
    movie_session_id INT(11) NOT NULL,
    pricing_id INT(11) NOT NULL,
    CONSTRAINT customer_FK FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT movie_session_FK FOREIGN KEY (movie_session_id) REFERENCES movie_sessions(id),
    CONSTRAINT pricing_FK FOREIGN KEY (pricing_id) REFERENCES pricings(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
