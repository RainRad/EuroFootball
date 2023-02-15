-- The Primary Key for leagues is a composite key (Leagues+Country). This is also the foreign key for clubs. 

CREATE TABLE "leagues" (
    "league" varchar(100)   NOT NULL,
    "league_tier" integer   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "total_clubs" integer   NOT NULL,
    "total_players" integer   NOT NULL,
    "average_age" float   NOT NULL,
    "percent_foreigners_players" float   NOT NULL,
    "foreigners_game_ratio" float   NOT NULL,
    "goals_per_match" float   NOT NULL,
    "average_league_value_euro" float   NOT NULL,
    "total_league_value_euro" float   NOT NULL,
    "league_link" varchar(100)   NOT NULL,
    CONSTRAINT "pk_leagues" PRIMARY KEY (
        "league","country"
     )
);

CREATE TABLE "clubs" (
    "club_id" serial   NOT NULL,
    "club" varchar(100)   NOT NULL,
    "league" varchar(100)   NOT NULL,
	"years_in_league" integer   NOT NULL,
	"league_tier" integer   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "squad_size" integer   NOT NULL,
    "average_age" float   NOT NULL,
    "foreign_players" integer   NOT NULL,
    "average_club_value_euro" float   NOT NULL,
    "total_club_value_euro" float   NOT NULL,
	"stadium_name" varchar(100)   NOT NULL,
	"stadium_capacity" float   NOT NULL,
	"club_link" varchar(100)   NOT NULL,
    CONSTRAINT "pk_clubs" PRIMARY KEY (
        "club_id"
     )
);

CREATE TABLE "players" (
    "player_id" serial   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "club_id" integer   NOT NULL,
    "number" integer   NOT NULL,
    "position" varchar(30)   NOT NULL,
    "date_of_birth" date   NOT NULL,
    "primary_nationality" varchar(100)   NOT NULL,
    "secondary_nationality" varchar(100)   NOT NULL,
    "height_cm" integer   NOT NULL,
    "preferred_foot" varchar(10)   NOT NULL,
    "date_joined_club" date   NOT NULL,
    "contract_end_date" date   NOT NULL,
    "player_market_value" float   NOT NULL,
    CONSTRAINT "pk_players" PRIMARY KEY (
        "player_id"
     )
);

ALTER TABLE "clubs" ADD CONSTRAINT "fk_clubs_league" FOREIGN KEY("league", "country")
REFERENCES "leagues" ("league", country);

ALTER TABLE "players" ADD CONSTRAINT "fk_players_club_id" FOREIGN KEY("club_id")
REFERENCES "clubs" ("club_id");