CREATE DATABASE rodeo_db;

USE rodeo_db;

CREATE TABLE tiers (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    team BOOLEAN NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE events (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE organizations (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    coop BOOLEAN NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE competitors (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NULL,
    last_name VARCHAR(255) NULL,
    team_name VARCHAR(255) NULL,
    group_names VARCHAR(255) NULL,
    org_id INT NOT NULL,
    tier_id INT NOT NULL,
    year_id INT NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE scores (
    id INT AUTO_INCREMENT NOT NULL,
    year_id INT NOT NULL,
    competitor_id INT NOT NULL,
    event_id INT NOT NULL,
    score INT NOT NULL,
    time_minutes INT NOT NULL,
    time_seconds INT NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE years (
    id INT AUTO_INCREMENT NOT NULL,
    value INT NULL,
    type VARCHAR(255) NOT NULL,
    tier_id INT NULL,
    event_id INT NULL,
    year_id INT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO years (id, value, type, tier_id, event_id, year_id) VALUES
(1, 2017, "year", null, null, null),
(2, 2018, "year", null, null, null),
(3, 2019, "year", null, null, null),
(4, 2020, "year", null, null, null),
(5, 2021, "year", null, null, null),
(6, null, "tier", 1, null, 4),
(7, null, "tier", 2, null, 4),
(8, null, "event", 1, 1, 4),
(9, null, "event", 1, 2, 4),
(10, null, "event", 1, 3, 4),
(11, null, "event", 1, 4, 4),
(12, null, "event", 1, 5, 4),
(13, null, "event", 2, 6, 4),
(14, null, "event", 2, 7, 4),
(15, null, "event", 2, 8, 4),
(16, null, "event", 2, 9, 4),
(17, null, "event", 2, 10, 4);

INSERT INTO tiers (id, name, team) VALUES 
(1, "Apprentice", false),
(2, "Journeyman", true);

INSERT INTO events (id, name) VALUES
(1, "Written Test"),
(2, "Hurtman Rescue"),
(3, "Cutout Change"),
(4, "Backyard Light Change Out"),
(5, "Obstacle Course"),
(6, "Down Primary"),
(7, "Knot Tying"),
(8, "Insulator Change"),
(9, "Dead End Bell Change"),
(10, "600A Switch Change"),
(11, "Crossarm Change"),
(12, "Knots and Crossarm Lift"),
(13, "Knot and Phase Tying"),
(14, "Double Cutout Change"),
(15, "Fuse Replacement");

INSERT INTO organizations (id, name, coop) VALUES
(1, "Santee Cooper", false),
(2, "Berkeley Electric Cooperative", true),
(3, "Horry Electric Cooperative", true),
(4, "Palmetto Electric Cooperative", true),
(5, "Blue Ridge Electric Cooperative", true),
(6, "York Electric Cooperative", true),
(7, "Mid-Carolina Electric Cooperative", true),
(8, "Broad River Electric Cooperative", true),
(9, "Black River Electric Cooperative", true),
(10, "Pee Dee Electric Cooperative", true),
(11, "Tri-County Electric Cooperative", true),
(12, "Newberry Electric Cooperative", true),
(13, "Marlboro Electric Cooperative", true),
(14, "Lynches River Electric Cooperative", true);

INSERT INTO competitors (id, first_name, last_name, team_name, group_names, org_id, tier_id, year_id) VALUES
(1, "Kyle", "Patrick", null, null, 6, 1, 4),
(2, "Jeremy", "Garrett", null, null, 1, 1, 4),
(3, "Michael", "Sims", null, null, 5, 1, 4),
(4, "Peter", "Strong", null, null, 4, 1, 4),
(5, null, null, "Santee Cooper Team 1", "Tommy Reece, Nick Brown, Coby Martin, Bryant Geathers", 1, 2, 4),
(6, null, null, "Santee Cooper Team 2", "Sport Rabon, Chris Osha, McKenzie Johnson", 1, 2, 4),
(7, null, null, "Palmetto Electric Cooperative Team 1", "Tarl Graham, Thomas Scaachi, David White", 4, 2, 4),
(8, null, null, "Blue Ridge Electric Cooperative Team 1", "Chad Davidson, Jay Bagwell, Clay Crawford, Anson Perry", 5, 2, 4);

INSERT INTO scores (id, year_id, competitor_id, event_id, score, time_minutes, time_seconds) VALUES
(1, 4, 1, 1, 99, 4, 45),
(2, 4, 1, 2, 98, 4, 40),
(3, 4, 1, 3, 97, 4, 35),
(4, 4, 1, 4, 96, 4, 30),
(5, 4, 1, 5, 95, 4, 25),
(6, 4, 2, 1, 94, 4, 55),
(7, 4, 2, 2, 93, 4, 50),
(8, 4, 2, 3, 92, 4, 45),
(9, 4, 2, 4, 91, 4, 40),
(10, 4, 2, 5, 90, 4, 35),
(11, 4, 3, 1, 89, 3, 55),
(12, 4, 3, 2, 88, 3, 50),
(13, 4, 3, 3, 87, 3, 45),
(14, 4, 3, 4, 86, 3, 40),
(15, 4, 3, 5, 85, 3, 35),
(16, 4, 4, 1, 84, 6, 15),
(17, 4, 4, 2, 83, 6, 10),
(18, 4, 4, 3, 82, 6, 5),
(19, 4, 4, 4, 81, 6, 0),
(20, 4, 4, 5, 80, 5, 55),
(21, 4, 5, 6, 99, 4, 55),
(22, 4, 5, 7, 98, 4, 50),
(23, 4, 5, 8, 97, 4, 45),
(24, 4, 5, 9, 96, 4, 40),
(25, 4, 5, 10, 95, 4, 35),
(26, 4, 6, 6, 94, 5, 55),
(27, 4, 6, 7, 93, 5, 50),
(28, 4, 6, 8, 92, 5, 45),
(29, 4, 6, 9, 91, 5, 40),
(30, 4, 6, 10, 90, 5, 35),
(31, 4, 7, 6, 89, 3, 45),
(32, 4, 7, 7, 88, 3, 40),
(33, 4, 7, 8, 87, 3, 35),
(34, 4, 7, 9, 86, 3, 30),
(35, 4, 7, 10, 85, 3, 25),
(36, 4, 8, 6, 84, 6, 45),
(37, 4, 8, 7, 83, 6, 40),
(38, 4, 8, 8, 82, 6, 35),
(39, 4, 8, 9, 81, 6, 30),
(40, 4, 8, 10, 80, 6, 25);