CREATE DATABASE Automobex

-- Provided 
CREATE TABLE `user_profile`
(
  id INT AUTO_INCREMENT,
  state VARCHAR(50)
  city VARCHAR(50) NOT NULL,
  userName VARCHAR(50) NOT NULL,
  PRIMARY KEY(id)
);

-- Provided 
CREATE TABLE `preferences`
(
  id INT AUTO_INCREMENT,
  preference VARCHAR(60),
  PRIMARY KEY(id),
  UNIQUE KEY(preference)
);

-- Provided 
CREATE TABLE `user_preferences`
(
  id INT AUTO_INCREMENT,
  userId INT NOT NULL,
  preference VARCHAR(60) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(userId) REFERENCES user_profile(id),
  FOREIGN KEY(preference) REFERENCES preferences(preference)
);

CREATE TABLE `event_log`
(
  id INT AUTO_INCREMENT,
  eventTag VARCHAR(60),
  eventTitle VARCHAR(100),
  eventDescription TEXT,
  state VARCHAR(40),
  city VARCHAR(60),
  PRIMARY KEY(id)
);

INSERT INTO event_log (event_tag)

CREATE TABLE `happiness_scores`
(
  id INT AUTO_INCREMENT,
  score VARCHAR(20),
  api VARCHAR(20),
  date DATE,
  PRIMARY KEY(id)
);

INSERT INTO user_profile (state, region, userName) VALUES ("Utah", "", "Matthew Obray");
INSERT INTO user_profile (state, region, userName) VALUES ("Texas", "", "Jessie Luo");
INSERT INTO user_profile (state, region, userName) VALUES ("South Carolina", "Columbia", "Gerald Wheaton");
INSERT INTO user_profile (state, region, userName) VALUES ("South Carolina", "Columbia", "Janneke Morin");
INSERT INTO user_profile (state, region, userName) VALUES ("South Carolina", "Columbia", "Alex Scott");

INSERT INTO preferences (preference) VALUES ("Sports"), ("Video Games"), ("Outdoors"), ("Music"), ("Crafts"), ("City"), ("Bars"), ("Board Games"), ("Hiking"), ("Adventure");

INSERT INTO user_preferences (userId, preference) VALUES (1, "Board Games"), (1, "Hiking"), (1, "City Life"), (3, "Adventure"), (3, "Music"), (3, "Virtual Hangout"), (2, "Video Games"), (2, "Crafts"), (4, "City Life"), (4, "Music"), (5, "Board Games"), (5, "Outdoors"), (5, "Sports")

