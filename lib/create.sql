-- have a table for projects, users, and pledges.
--
-- Create a schema based on the following information:
--
-- A project has a title, a category, a funding goal, a start date, and an end date.
-- A user has a name and an age
-- A pledge has an amount. It belongs to a user, and it also belongs to a project.


CREATE TABLE projects(
  ID INTEGER PRIMARY KEY,
  TITLE TEXT,
  CATEGORY TEXT,
  FUNDING_GOAL INTEGER,
  START_DATE TEXT,
  END_DATE TEXT
);

CREATE TABLE users(
  ID INTEGER PRIMARY KEY,
  NAME TEXT,
  AGE INTEGER
);

CREATE TABLE pledges(
  ID INTEGER PRIMARY KEY,
  AMOUNT INTEGER,
  USER_ID INTEGER,
  PROJECT_ID INTEGER
);
