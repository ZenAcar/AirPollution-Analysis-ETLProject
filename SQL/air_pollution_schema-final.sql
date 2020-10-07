-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "mod_mean_us_pollution" (
    "years" char(10)   NOT NULL,
    "no2_mean" float   NOT NULL,
    "so2_mean" float   NOT NULL,
    "co_mean" float   NOT NULL,
    CONSTRAINT "pk_mod_mean_us_pollution" PRIMARY KEY (
        "years"
     )
);

CREATE TABLE "mod_pollution_year_city" (
    "years" char(10)   NOT NULL,
    "city" varchar   NOT NULL,
    "no2_mean" float   NOT NULL,
    "so2_mean" float   NOT NULL,
    "co_mean" float   NOT NULL,
    CONSTRAINT "pk_mod_pollution_year_city" PRIMARY KEY (
        "years","city"
     )
);

CREATE TABLE "mod_pollution_year_state" (
    "years" char(10)   NOT NULL,
    "state" varchar   NOT NULL,
    "no2_mean" float   NOT NULL,
    "so2_mean" float   NOT NULL,
    "co_mean" float   NOT NULL,
    CONSTRAINT "pk_mod_pollution_year_state" PRIMARY KEY (
        "years","state"
     )
);

CREATE TABLE "mod_cleaned_air_emission_by_source_co" (
    "pol" varchar   NOT NULL,
    "value" float   NOT NULL,
    "pol_variable" char(200)   NOT NULL,
    "pol_var" char(200)   NOT NULL,
    "years" char(10)   NOT NULL,
    CONSTRAINT "pk_mod_cleaned_air_emission_by_source_co" PRIMARY KEY (
        "pol_var","years"
     )
);

CREATE TABLE "mod_cleaned_air_emission_by_source_no2" (
    "pol" varchar   NOT NULL,
    "value" float   NOT NULL,
    "pol_variable" char(200)   NOT NULL,
    "pol_var" char(200)   NOT NULL,
    "years" char(10)   NOT NULL,
    CONSTRAINT "pk_mod_cleaned_air_emission_by_source_no2" PRIMARY KEY (
        "pol_var","years"
     )
);

CREATE TABLE "mod_cleaned_air_emission_by_source_so2" (
    "pol" varchar   NOT NULL,
    "value" float   NOT NULL,
    "pol_variable" char(200)   NOT NULL,
    "pol_var" char(200)   NOT NULL,
    "years" char(10)   NOT NULL,
    CONSTRAINT "pk_mod_cleaned_air_emission_by_source_so2" PRIMARY KEY (
        "pol_var","years"
     )
);

ALTER TABLE "mod_pollution_year_city" ADD CONSTRAINT "fk_mod_pollution_year_city_years" FOREIGN KEY("years")
REFERENCES "mod_mean_us_pollution" ("years");

ALTER TABLE "mod_pollution_year_state" ADD CONSTRAINT "fk_mod_pollution_year_state_years" FOREIGN KEY("years")
REFERENCES "mod_mean_us_pollution" ("years");

ALTER TABLE "mod_cleaned_air_emission_by_source_co" ADD CONSTRAINT "fk_mod_cleaned_air_emission_by_source_co_years" FOREIGN KEY("years")
REFERENCES "mod_mean_us_pollution" ("years");

ALTER TABLE "mod_cleaned_air_emission_by_source_no2" ADD CONSTRAINT "fk_mod_cleaned_air_emission_by_source_no2_years" FOREIGN KEY("years")
REFERENCES "mod_mean_us_pollution" ("years");

ALTER TABLE "mod_cleaned_air_emission_by_source_so2" ADD CONSTRAINT "fk_mod_cleaned_air_emission_by_source_so2_years" FOREIGN KEY("years")
REFERENCES "mod_mean_us_pollution" ("years");

