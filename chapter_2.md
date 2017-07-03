# Chapter 2

## Adding breweries

Use a text editor to create the following sql file named
`add_breweries.sql`

```
-- add_breweries.sql
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("0", "Big Beard Brewery", "92452 Hardy Inlet", "Suite 306", "Boulder", "CO", "28972-3899", "2016-04-13 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("1", "Flannel Shirt Brewery", "14712 Torphy Rue", "Apt. 391", "San Francisco", "CA", "36424", "2015-05-28 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("2", "Bowler Hat Brewery", "724 Easter Divide", "Apt. 962", "Portland", "OR", "50520-8565", "2015-02-20 13:02:38 -0800");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("3", "Typewriter Brewery", "9795 Collins Inlet", "Suite 955", "Brooklyn", "NY", "56497-0283", "2015-05-08 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("4", "Mustache Wax Brewery", "8230 Donny Unions", "Suite 680", "San Diego", "CA", "10706-0655", "2016-08-13 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("5", "Ironic Tee Brewery", "5190 Lakin Stravenue", "Suite 649", "Seatle", "WA", "70947", "2015-10-19 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("6", "Cassette Tape Brewery", "795 Wisoky Village", "Apt. 375", "Austin", "TX", "54178", "2012-10-19 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("7", "Long Playing Record Brewery", "17606 Brenden Lakes", "Suite 406", "San Diego", "CA", "89126", "2015-07-22 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("8", "Bow Tie Brewery", "40914 Braeden Ramp", "Suite 432", "Portland", "OR", "63566", "2013-07-16 13:02:38 -0700");
INSERT INTO breweries (id, name, address_1, address_2, city, state, zip, established_at)
  VALUES ("9", "Chucky T Brewery", "77283 Fadel Corner", "Apt. 784", "San Diego", "CA", "96843", "2017-06-05 13:02:38 -0700");
```

Insert the breweries into the database.
```
$ sqlite3 beer.db < add_breweries.sql
```

Each of the pairs of lines in the file represents a single row in the
breweries table in the database. The `INSERT INTO breweries` tells sqlite3 that
we're going to put a row in the `breweries` table. The
`(id, name, address_1, address_2, city, state, zip, established_at)` are the columns
that we want to add and finally the `VALUES` are the values for those
columns in order.

Now let's look at the breweries in the database ...

```
sqlite3 beer.db
SQLite version 3.14.0 2016-07-26 15:17:14
Enter ".help" for usage hints.
sqlite> select * from breweries;
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700
2|Bowler Hat Brewery|724 Easter Divide|Apt.  962|Portland|OR|50520-8565|2015-02-20 13:02:38 -0800
3|Typewriter Brewery|9795 Collins Inlet|Suite 955|Brooklyn|NY|56497-0283|2015-05-08 13:02:38 -0700
4|Mustache Wax Brewery|8230 Donny Unions|Suite 680|San Diego|CA|10706-0655|2016-08-13 13:02:38 -0700
5|Ironic Tee Brewery|5190 Lakin Stravenue|Suite 649|Seatle|WA|70947|2015-10-19 13:02:38 -0700
6|Cassette Tape Brewery|795 Wisoky Village|Apt.  375|Austin|TX|54178|2012-10-19 13:02:38 -0700
7|Long Playing Record Brewery|17606 Brenden Lakes|Suite 406|San Diego|CA|89126|2015-07-22 13:02:38 -0700
8|Bow Tie Brewery|40914 Braeden Ramp|Suite 432|Portland|OR|63566|2013-07-16 13:02:38 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700
```

The `select` statement shows the entire breweries table. We'll be
learning more about select statements in the next chapter.
