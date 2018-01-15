--A project has a title, a category, a funding goal, a start date, and an end date

CREATE TABLE projects(id INTEGER PRIMARY KEY, title  TEXT, category  TEXT, funding_goal  INTEGER, start_date  TEXT, end_date  TEXT);


CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age TEXT);


CREATE TABLE pledges(id INTEGER PRIMARY KEY, amount INTEGER, user_id INTEGER, project_id INTEGER);
