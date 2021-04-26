create database PokeFind;
use PokeFind;

create table pokemon (
	id				varchar(10),
    pokemon_name	varchar(40),
    pokemon_level	int,
    hp				int,
    pokemon_type	varchar(100),
    rarity			varchar(100),
    set_name		varchar(100),
    image_large		varchar(200),
    image_small 	varchar(200),
    evolvesTo 		varchar(100),
    primary key (id)
);

create table attack (
    id				varchar(10),
    attack_name		varchar(100),
    attack_cost		varchar(150),
    convertedEnergyCost  	int,
    attack_damage   varchar(10),
    primary key (id, attack_name),
    foreign key (id) references pokemon(id) on delete cascade
);

create table weakness (
    id				varchar(10),
    weakness_type   varchar(100),
    weakness_value  varchar(10),
    primary key (id),
    foreign key (id) references pokemon(id) on delete cascade
);

create table price (
    id			varchar(10),
    card_type	varchar(50),
	low			int,
    mid         int,
    high        int,
    primary key (id, card_type),
    foreign key (id) references pokemon(id) on delete cascade
);



