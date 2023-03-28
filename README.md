# Project Overview

This project utilizes a basic ETL workflow by extracting data from https://www.transfermarkt.us/ via webscraping (beautifulsoup), transforming and preparing this data via pandas, and loading it into a PostSQL relational database for later access. This was then connected to Tableau to create a simple dashboard providing insight into the total value of leagues in europe, along with the average stadium size by country. This dashboard can be found here: https://public.tableau.com/app/profile/rainier2317/viz/EuropeanFootball_16764292721640/Dashboard1

## The included files (Club, Player, League Extracts) each scrape data from the website. 

Leagues Export v4.ipynb - Scrapes data from the top 25 leagues in Europe. 

Clubs Export v4.ipynb - Scrapes data from all clubs in those top 25 leagues. 

Players Export v4.ipynb - Scrapes data from all clubs in those top 25 leagues. 

MyFunctionsList.py - Stores Custom Functions used in the above scripts. 

## SQL 

European_Football_DB_Schema.sql - The Schema used to create the needed tables in the database. 

