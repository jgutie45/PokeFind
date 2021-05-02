SET GLOBAL local_infile=1;
USE PokeFind;
LOAD DATA LOCAL INFILE 'C:\Users\yasmi\Desktop\CS480FinalProject\PokeFind\Scripts\pokemon.csv' INTO TABLE pokemon FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:\Users\yasmi\Desktop\CS480FinalProject\PokeFind\Scripts\attack.csv' INTO TABLE attack FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:\Users\yasmi\Desktop\CS480FinalProject\PokeFind\Scripts\weakness.csv' INTO TABLE weakness FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE 'C:\Users\yasmi\Desktop\CS480FinalProject\PokeFind\Scripts\price.csv' INTO TABLE price FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';