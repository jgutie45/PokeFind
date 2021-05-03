USE PokeFind;

-- Procedures:
-- findPokemonDescAllSets(pokemonName VARCHAR(20)): pokemon_name, set_name, image_large
-- findPokemonAscAllSets(pokemonName VARCHAR(20)): pokemon_name, set_name, image_large
-- findPokemonSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, set_name, image_large
-- findPokemonSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, set_name, image_large
-- findHPDescAllSets(pokemonName VARCHAR(20)): pokemon_name, hp, set_name, image_large
-- findHPAscAllSets(pokemonName VARCHAR(20)): pokemon_name, hp, set_name, image_large
-- findHPSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, hp, set_name, image_large
-- findHPSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, hp, set_name, image_large
-- findPriceLowAscAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceLowDescAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceMidAscAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceMidDescAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceHighAscAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceHighDescAllSets(pokemonName VARCHAR(20)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetLowAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetLowDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetMidAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetMidDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetHighAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findPriceSetHighDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, low, mid, high, set_name, image_large
-- findSetAsc(setName VARCHAR(20)): pokemon_name, set_name, image_larger
-- findSetDesc(setName VARCHAR(20)): pokemon_name, set_name, image_larger
-- findAttackDamageDescAllSets(pokemonName VARCHAR(20)): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findAttackDamageAscAllSets(pokemonName VARCHAR(20)): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findAttackDamageSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findAttackDamageSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30)): pokemon_name, attack_name, attack_damage, set_name, image_large
-- findTypeDescAllSets(pokemonType VARCHAR(20)): pokemon_name, pokemon_type, set_name, image_large
-- findTypeAscAllSets(pokemonType VARCHAR(20)):pokemon_name, pokemon_type, set_name, image_large
-- findTypeSetDesc(pokemonType VARCHAR(20), setName VARCHAR(30)): pokemon_name, pokemon_type, set_name, image_large
-- findTypeSetAsc(pokemonType VARCHAR(20), setName VARCHAR(30)): pokemon_name, pokemon_type, set_name, image_large


-- Name Order DESC or ASC --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findPokemonDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findPokemonDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    ORDER BY pokemon_name DESC;
END !
SET DELIMITER ;
 
DROP PROCEDURE IF EXISTS findPokemonAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findPokemonAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    ORDER BY pokemon_name ASC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPokemonSetDesc;
SET DELIMITER !
CREATE PROCEDURE findPokemonSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    AND set_name = setName
    ORDER BY pokemon_name DESC;
END !
SET DELIMITER ;
 
DROP PROCEDURE IF EXISTS findPokemonSetAsc;
SET DELIMITER !
CREATE PROCEDURE findPokemonSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    AND set_name = setName
    ORDER BY pokemon_name ASC;
END !
SET DELIMITER ;





-- HP DESC or ASC --------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS findHPDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findHPDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    ORDER BY hp DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findHPAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findHPAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    ORDER BY hp ASC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findHPSetDesc;
SET DELIMITER !
CREATE PROCEDURE findHPSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    AND set_name = setName
    ORDER BY hp DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findHPSetAsc;
SET DELIMITER !
CREATE PROCEDURE findHPSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, hp, set_name, image_large FROM pokemon 
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%')
    AND set_name = setName
    ORDER BY hp ASC;
END !
SET DELIMITER ;




-- Price DESC or ASC All Sets --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findPriceLowAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceLowAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY low ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceLowDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceLowDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY low DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceMidAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceMidAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY mid ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceMidDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceMidDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY mid DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceHighAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceHighAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY high ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceHighDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findPriceHighDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    ORDER BY high DESC;
END !
SET DELIMITER ;




-- Price DESC or ASC of Sets --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findPriceSetLowAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetLowAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY low ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceSetLowDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetLowDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY low DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceSetMidAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetMidAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY mid ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceSetMidDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetMidDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY mid DESC;
END !
SET DELIMITER ;


DROP PROCEDURE IF EXISTS findPriceSetHighAsc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetHighAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY high ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findPriceSetHighDesc;
SET DELIMITER !
CREATE PROCEDURE findPriceSetHighDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, low, mid, high, set_name, image_large FROM pokemon, price
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = price.id
    AND set_name = setName
    ORDER BY high DESC;
END !
SET DELIMITER ;


-- Set: select each set 
-- Entire Set --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findSetAsc;
SET DELIMITER !
CREATE PROCEDURE findSetAsc(setName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_larger FROM pokemon 
    WHERE set_name = setName
    ORDER BY set_name ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findSetDesc;
SET DELIMITER !
CREATE PROCEDURE findSetDesc(setName VARCHAR(20))
BEGIN
	SELECT pokemon_name, set_name, image_larger FROM pokemon 
    WHERE set_name = setName
    ORDER BY set_name DESC;
END !
SET DELIMITER ;



-- Attack Damage DESC or ASC --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findAttackDamageDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageDescAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = attack.id
    ORDER BY attack_damage DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findAttackDamageAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageAscAllSets(pokemonName VARCHAR(20))
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = attack.id
    ORDER BY attack_damage ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findAttackDamageSetDesc;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageSetDesc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = attack.id
    AND set_name = setName
    ORDER BY attack_damage DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findAttackDamageSetAsc;
SET DELIMITER !
CREATE PROCEDURE findAttackDamageSetAsc(pokemonName VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, attack_name, attack_damage, set_name, image_large FROM pokemon, attack
    WHERE pokemon_name LIKE CONCAT('%', pokemonName, '%') AND pokemon.id = attack.id
    AND set_name = setName
    ORDER BY attack_damage ASC;
END !
SET DELIMITER ;





-- Type: Select Type of pokemon aka the energies --------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS findTypeDescAllSets;
SET DELIMITER !
CREATE PROCEDURE findTypeDescAllSets(pokemonType VARCHAR(20))
BEGIN
	SELECT pokemon_name, pokemon_type, set_name, image_large FROM pokemon 
    WHERE pokemon_type = pokemonType
    ORDER BY pokemon_type DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findTypeAscAllSets;
SET DELIMITER !
CREATE PROCEDURE findTypeAscAllSets(pokemonType VARCHAR(20))
BEGIN
	SELECT pokemon_name, pokemon_type, set_name, image_large FROM pokemon 
    WHERE pokemon_type = pokemonType
    ORDER BY pokemon_type ASC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findTypeSetDesc;
SET DELIMITER !
CREATE PROCEDURE findTypeSetDesc(pokemonType VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, pokemon_type, set_name, image_large FROM pokemon 
    WHERE pokemon_type = pokemonType
    AND set_name = setName
    ORDER BY pokemon_type DESC;
END !
SET DELIMITER ;

DROP PROCEDURE IF EXISTS findTypeSetAsc;
SET DELIMITER !
CREATE PROCEDURE findTypeSetAsc(pokemonType VARCHAR(20), setName VARCHAR(30))
BEGIN
	SELECT pokemon_name, pokemon_type, set_name, image_large FROM pokemon 
    WHERE pokemon_type = pokemonType
    AND set_name = setName
    ORDER BY pokemon_type ASC;
END !
SET DELIMITER ;


