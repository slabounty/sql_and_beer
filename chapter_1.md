# Chapter 1

## Creating the brewery table

Use a text editor to create the following sql file named
`create_breweries.sql`

```
-- create_breweries.sql
CREATE TABLE breweries (
  id INTEGER PRIMARY KEY,
  name TEXT,
  address_1 TEXT,
  address_2 TEXT,
  city TEXT,
  state TEXT,
  zip TEXT,
  established_at TEXT
);
```

Create the beer database using the following command.
```
$ sqlite3 beer.db < create_breweries.sql
```

Look at the beer database by going into sqlite with the beer database.
```
$ sqlite3 beer.db
SQLite version 3.14.0 2016-07-26 15:17:14
Enter ".help" for usage hints.
sqlite> .tables
breweries
sqlite> .schema
CREATE TABLE breweries (
  id INTEGER PRIMARY KEY,
  name TEXT,
  address_1 TEXT,
  address_2 TEXT,
  city TEXT,
  state TEXT,
  zip TEXT,
  established_at TEXT
);
```

`.tables` will show all the tables in the database which in our case is
just the one.

`.schema` will show the structure of the database which here is just
what we've done earlier to create the database.
