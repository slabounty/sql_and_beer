-- create_beer.sql
CREATE TABLE beers (
  id INTEGER PRIMARY KEY,
  brewery_id INTEGER,
  name TEXT,
  type TEXT,
  average_cost FLOAT,
  lowest_cost FLOAT,
  highest_cost FLOAT,
  introduced_at TEXT
);
