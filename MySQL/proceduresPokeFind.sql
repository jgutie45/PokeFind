USE PokeFind;

-- Procedures:
-- findSet(setName VARCHAR(20)): pokemon_name, set_name, image_large
-- findPokemon(pokemonName VARCHAR(20)): pokemon_name, set_name, image_large
-- findType(pokemonType VARCHAR(20)): pokemon_name, set_name, image_large
-- findID(pokemonID VARCHAR(20)): pokemon_name, set_name, image_large
-- findRarity(pokemonRarity VARCHAR(20)): pokemon_name, rarity, set_name, image_large
-- findEvolve(pokemonName VARCHAR(20)): pokemon_name, evolvesTo, set_name, image_large
-- findWeakness(pokemonName VARCHAR(20)): pokemon_name, weakness_type, weakness_value, set_name, image_large
-- findLevelGreater(pokemonLevel INT): pokemon_name, set_name, pokemon_level, image_large
-- findLevelLess(pokemonLevel INT): pokemon_name, set_name, pokemon_level, image_large
-- findLevelExact(pokemonLevel INT): pokemon_name, set_name, pokemon_level, image_large
-- findHPGreater(pokemonHP INT): pokemon_name, hp, set_name, image_large
-- findHPLess(pokemonHP INT): pokemon_name, hp, set_name, image_large
-- findHPExact(pokemonHP INT): pokemon_name, hp, set_name, image_large
-- findAttackDamage(pokemonName VARCHAR(20)): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findAttackDamageGreater(attackDamage INT): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findAttackDamageLess(attackDamage INT): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findPriceLowAsc(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceLowDesc(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceMidAsc(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceMidDesc(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceHighAsc(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceHighDesc(pokemonName VARCHAR(20)):pokemon_name, low, mid, high, set_name, image_large


-- Set ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findSet;
SET DELIMITER !
CREATE PROCEDURE findSet(setName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_larger FROM pokemon 
    WHERE set_name = setName;
END !
SET DELIMITER ;


-- Pokemon ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findPokemon;
SET DELIMITER !
CREATE PROCEDURE findPokemon(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%');
END !
SET DELIMITER ;



-- Type ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findType;
SET DELIMITER !
CREATE PROCEDURE findType(pokemonType VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_type = pokemonType;
END !
SET DELIMITER ;



-- ID ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findID;
SET DELIMITER !
CREATE PROCEDURE findID(pokemonID VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE id LIKE CONCAT('%', pokemonID, '%');
END !
SET DELIMITER ;



-- Rarity ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findRarity;
SET DELIMITER !
CREATE PROCEDURE findRarity(pokemonRarity VARCHAR(20))
BEGIN
	SELECT pokemon_name, rarity, set_name, image_large FROM pokemon 
    WHERE rarity = pokemonRarity
    ORDER BY set_name ASC;
END !
SET DELIMITER ;


-- Evolution ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findEvolve;
SET DELIMITER !
CREATE PROCEDURE findEvolve(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, evolvesTo, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    ORDER BY set_name ASC;
END !
SET DELIMITER ;


-- Weakness ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findWeakness;
SET DELIMITER !
CREATE PROCEDURE findWeakness(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, weakness_type, weakness_value, set_name, image_large FROM pokemon, weakness
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = weakness.id
    ORDER BY set_name ASC;
END !
SET DELIMITER ;


-- Level ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findLevelGreater;
SET DELIMITER !
CREATE PROCEDURE findLevelGreater(pokemonLevel INT)
BEGIN
	SELECT pokemon_name, set_name, pokemon_level, image_large FROM pokemon 
    WHERE pokemon_level >= pokemonLevel
    ORDER BY pokemon_level DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findLevelLess;
SET DELIMITER !
CREATE PROCEDURE findLevelLess(pokemonLevel INT)
BEGIN
	SELECT pokemon_name, set_name, pokemon_level, image_large FROM pokemon 
    WHERE pokemon_level <= pokemonLevel
    ORDER BY pokemon_level ASC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findLevelExact;
SET DELIMITER !
CREATE PROCEDURE findLevelExact(pokemonLevel INT)
BEGIN
	SELECT pokemon_name, set_name, pokemon_level, image_large FROM pokemon 
    WHERE pokemon_level = pokemonLevel
    ORDER BY pokemon_name DESC;
END !
SET DELIMITER ;



-- HP ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findHPGreater;
SET DELIMITER !
CREATE PROCEDURE findHPGreater(pokemonHP INT)
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE hp >= pokemonHP
    ORDER BY hp DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findHPLess;
SET DELIMITER !
CREATE PROCEDURE findHPLess(pokemonHP INT)
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE hp >= pokemonHP
    ORDER BY hp ASC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findHPExact;
SET DELIMITER !
CREATE PROCEDURE findHPExact(pokemonHP INT)
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE hp = pokemonHP
    ORDER BY hp DESC;
END !
SET DELIMITER ;




-- Hit Points ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findAttackDamage;
SET DELIMITER !
CREATE PROCEDURE findAttackDamage(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = attack.id
    ORDER BY attack_damage DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findAttackDamageGreater;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageGreater(attackDamage INT)
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE attack_damage >= attackDamage AND pokemon.id = attack.id
    ORDER BY attack_damage DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findAttackDamageLess;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageLess(attackDamage INT)
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE attack_damage <= attackDamage AND pokemon.id = attack.id
    ORDER BY attack_damage DESC;
END !
SET DELIMITER ;



-- Prices ------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findPriceLowAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceLowAsc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY low ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceLowDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceLowDesc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY low DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceMidAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceMidAsc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY mid ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceMidDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceMidDesc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY low DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceHighAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceHighAsc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY high ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceHighDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceHighDesc(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY high DESC;
END !
SET DELIMITER ;
