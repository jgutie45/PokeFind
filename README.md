# PokeFind
CS 480 Project Using an SQL database to connect the information
#How To Run The Project
  - git clone the project
  - cd into webpage folder
  - run command "npm run build"
  - go to browser and type "localhost:8080"


#Data:
  - Data was extracted and processed using Bash scripts. Data was pulled from the Pokemon API detailed here: https://docs.pokemontcg.io/.
  - When the data is pulled using the curl command it's in JSON format which is then processed with the jq command to convert into workable CSV files. 
  - Awk command is used to replace empty data with \N to properly upload NULL values into mySQL 
  - or it's used to delete rows of empty data.
  - Final csv files in /CSV.

#Database:
  - To build the database, run the SQL files from /MySQL in this order:
  1. buildPokeFind.sql
  - Place the csv files from /CSV into your C:/Temp/, or change the file location in LOAD DATA LOCAL INFILE in populatePokeFind.sql and place the csv files there.
  2. populatePokeFind.sql
  3. proceduresPokeFind.sql
  4. moreProcedures.sql

#Resources:
  -Used Node.js
  -Used Express and ejs from Node.JS
  -Used HTML, Javascript, and CSS

