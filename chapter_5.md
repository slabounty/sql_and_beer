# Chapter 5

## Creating the brewery table

Let's use the same technique we did in Chapter 1 to generate the beer
table. Use your favorite text editor to create a `create_beers.sql` file
and add the following to it.

```
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
```

Then add the table to the beers database with ...

```
$ sqlite3 beers.db < create_beers_table.sql
```

Now, add the beers themselves. Normally, I'd suggest that you type them
by hand, but in this case feel free to cut and paste. You can either put
them into a file, `add_beers.sql` and then

```
$ sqlite3 beers.db < add_beers.sql
```

or else 

```
$ sqlite3 beers.db
sqlite> -- paste below code here.
```

Either way, you should be able to go into the sqlite3 console and do a 

```
sqlite> select * from beers;
```

and see all the beers you put in below.


```
-- Add these using one of the two methods above.
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("0", "0", "Green Galactus", "Lager", "5.16", "4.57", "5.89", "2014-11-07 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("1", "0", "Ben Solo", "Red Ale", "8.25", "7.7", "8.58", "2016-03-13 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("2", "0", "Vista", "Lager", "7.25", "6.51", "7.86", "2014-07-22 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("3", "0", "Jango Fett", "Pilsner", "6.46", "5.93", "7.17", "2014-11-24 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("4", "0", "Aeneas", "Ale", "5.64", "5.14", "6.24", "2016-12-07 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("5", "0", "Jango Fett", "Imperial Pale Ale", "8.61", "8.15", "8.93", "2017-06-27 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("6", "0", "Ares", "Pilsner", "7.41", "6.79", "8.01", "2015-11-19 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("7", "1", "Vaiya", "Red Ale", "6.8", "6.32", "7.19", "2015-09-21 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("8", "1", "Molten Man Ivy", "Red Ale", "5.14", "4.58", "5.79", "2014-04-08 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("9", "1", "Hephaestus", "Pilsner", "5.79", "5.36", "6.38", "2016-09-18 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("10", "1", "Penelope", "Porter", "5.83", "5.11", "6.15", "2013-06-20 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("11", "1", "Venom", "Imperial Pale Ale", "5.69", "5.26", "6.4", "2013-10-08 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("12", "1", "Mace Windu", "Imperial Pale Ale", "6.43", "6.15", "6.94", "2017-02-10 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("13", "2", "Jabba the Hutt", "Bitter", "5.24", "4.78", "5.87", "2014-01-04 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("14", "2", "Éomer", "Wheat Beer", "5.95", "5.67", "6.51", "2017-05-16 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("15", "2", "Count Dooku", "Stout", "6.3", "5.71", "6.83", "2015-01-08 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("16", "2", "Darth Sidious", "Red Ale", "5.17", "4.83", "5.73", "2013-03-09 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("17", "2", "Chewbacca", "Porter", "6.85", "6.33", "7.41", "2013-01-22 16:25:21 -0800");
  VALUES ("18", "2", "Galadriel", "Barley Wine", "7.2", "6.94", "7.82", "2015-04-06 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("19", "3", "Polyxena", "Porter", "6.0", "5.34", "6.43", "2017-03-12 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("20", "3", "Cat the Fated", "Imperial Pale Ale", "7.12", "6.85", "7.67", "2017-02-21 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("21", "3", "Faramir", "Wheat Beer", "8.5", "8.07", "9.14", "2014-01-19 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("22", "3", "Beregond", "Imperial Pale Ale", "8.1", "7.81", "8.59", "2015-01-06 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("23", "3", "Elostirion", "Stout", "6.77", "6.17", "7.25", "2014-12-06 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("24", "4", "Doors of Durin", "Wheat Beer", "8.64", "8.21", "9.25", "2015-05-04 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("25", "4", "Denethor", "Lager", "7.82", "7.53", "8.25", "2013-11-22 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("26", "4", "Jar Jar Binks", "Porter", "6.98", "6.35", "7.36", "2015-10-08 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("27", "4", "Dol Guldur", "Wheat Beer", "6.99", "6.25", "7.57", "2012-12-16 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("28", "4", "Phaedra", "Wheat Beer", "5.08", "4.58", "5.76", "2016-06-29 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("29", "5", "Niobe", "Ale", "8.39", "7.71", "8.79", "2015-08-07 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("30", "5", "Beregond", "Pilsner", "7.13", "6.44", "7.54", "2014-04-30 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("31", "5", "Dark Hope Summers", "Imperial Pale Ale", "5.94", "5.6", "6.67", "2014-09-23 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("32", "5", "Sunspot", "Ale", "8.82", "8.2", "9.35", "2014-07-13 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("33", "5", "Jason", "Pilsner", "8.62", "8.1", "9.05", "2016-10-08 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("34", "5", "Mandarin the Fated", "Red Ale", "5.97", "5.33", "6.39", "2015-05-12 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("35", "6", "Hephaestus", "Bitter", "5.94", "5.5", "6.3", "2016-09-20 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("36", "6", "Wedge Antilles", "Barley Wine", "5.82", "5.1", "6.1", "2016-07-13 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("37", "6", "Ammo", "Stout", "8.76", "8.47", "9.48", "2013-04-06 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("38", "7", "Aeneas", "Ale", "6.33", "5.94", "6.72", "2015-04-04 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("39", "7", "The Rivers and Beacon-Hills of Gondor", "Bitter", "7.17", "6.42", "7.5", "2016-05-27 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("40", "7", "Obi-Wan Kenobi", "Ale", "6.84", "6.46", "7.21", "2017-02-12 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("41", "8", "Jar Jar Binks", "Imperial Pale Ale", "8.73", "8.4", "9.48", "2013-09-12 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("42", "8", "Borvo the Hutt", "Lager", "5.63", "4.88", "6.27", "2015-02-13 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("43", "8", "Giant Sage", "Red Ale", "6.77", "6.46", "7.29", "2016-04-21 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("44", "8", "Máhanaxar", "Red Ale", "6.66", "6.37", "7.06", "2013-11-17 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("45", "8", "The Forsaken Inn", "Ale", "8.78", "8.25", "9.45", "2016-08-26 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("46", "9", "Jar Jar Binks", "Stout", "6.23", "5.78", "6.59", "2016-03-24 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("47", "9", "Luthany", "Stout", "5.07", "4.64", "5.55", "2013-09-10 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("48", "9", "Anakin Skywalker", "Barley Wine", "8.17", "7.77", "8.46", "2013-11-05 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("49", "9", "Narchost", "Pilsner", "8.52", "7.8", "8.79", "2012-12-15 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("50", "9", "Gimli", "Imperial Pale Ale", "8.61", "8.21", "8.89", "2016-08-17 16:25:21 -0700");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("51", "9", "Boba Fett", "Red Ale", "5.6", "5.13", "6.26", "2014-02-11 16:25:21 -0800");
INSERT INTO beers (id, brewery_id, name, type, average_cost, lowest_cost, highest_cost, introduced_at)
  VALUES ("52", "9", "Núath", "Pilsner", "7.94", "7.34", "8.34", "2013-03-22 16:25:21 -0700");
```
