DROP DATABASE IF EXISTS PokeFind;
CREATE DATABASE PokeFind;
USE PokeFind;

CREATE TABLE pokemon (
	id				VARCHAR(10),
    pokemon_name	VARCHAR(50),
    pokemon_level	INT,
    hp				INT,
    pokemon_type	VARCHAR(50),
    rarity			VARCHAR(50),
    set_name		VARCHAR(50),
    image_large		VARCHAR(200),
    image_small 	VARCHAR(200),
    evolvesTo 		VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE attack (
    id				VARCHAR(10),
    attack_name		VARCHAR(50),
    attack_cost		VARCHAR(50),
    convertedEnergyCost  	INT,
    attack_damage   		INT,
    PRIMARY KEY (id, attack_name),
    FOREIGN KEY (id) REFERENCES pokemon(id) ON DELETE CASCADE
);

CREATE TABLE weakness (
    id				VARCHAR(10),
    weakness_type   VARCHAR(50),
    weakness_value  VARCHAR(10),
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES pokemon(id) ON DELETE CASCADE
);

CREATE TABLE price (
    id			VARCHAR(10),
    card_type	VARCHAR(50),
	low			INT,
    mid         INT,
    high        INT,
    PRIMARY KEY (id, card_type),
    FOREIGN KEY (id) REFERENCES pokemon(id) ON DELETE CASCADE
);


