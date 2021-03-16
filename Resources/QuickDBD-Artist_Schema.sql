-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/nc2rEN
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "agent" (
    "agentID" int   NOT NULL,
    "firstName" string   NOT NULL,
    "lastName" string   NOT NULL,
    "title" string   NOT NULL,
    "phone" varchar   NOT NULL,
    "address1" string   NOT NULL,
    "address2" string   NOT NULL,
    "city" string   NOT NULL,
    "state" string   NOT NULL,
    "zip" varchar   NOT NULL,
    "email" string   NOT NULL,
    "artists" string   NOT NULL,
    "agency" int   NOT NULL,
    CONSTRAINT "pk_agent" PRIMARY KEY (
        "agentID"
     )
);

CREATE TABLE "agencies" (
    "agencyID" int   NOT NULL,
    "agentURL" string   NOT NULL,
    CONSTRAINT "pk_agencies" PRIMARY KEY (
        "agencyID"
     )
);

CREATE TABLE "artists" (
    "artistID" int   NOT NULL,
    "artist" string   NOT NULL,
    "attendance" int   NOT NULL,
    "averageGross" money   NOT NULL,
    "territory" string   NOT NULL,
    "agency" string   NOT NULL,
    CONSTRAINT "pk_artists" PRIMARY KEY (
        "artistID"
     )
);

CREATE TABLE "bands" (
    "artist" string   NOT NULL,
    "bandsintown" int   NOT NULL
);

ALTER TABLE "agent" ADD CONSTRAINT "fk_agent_agency" FOREIGN KEY("agency")
REFERENCES "agencies" ("agencyID");

ALTER TABLE "artists" ADD CONSTRAINT "fk_artists_agency" FOREIGN KEY("agency")
REFERENCES "agencies" ("agencyID");

ALTER TABLE "bands" ADD CONSTRAINT "fk_bands_artist" FOREIGN KEY("artist")
REFERENCES "artists" ("artist");

