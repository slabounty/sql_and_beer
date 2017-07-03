# Chapter 3

## Simple `select` Statements

We saw at the end of the last chapter that we could look at a table
in the database with a select statement.

For this chapter, we'll just be getting into the sqlite console and
running commands. Go ahead and get started with the following command.

```
sqlite3 beer.db
```

```
sqlite> select * from breweries;
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700
2|Bowler Hat Brewery|724 Easter Divide|Apt. 962|Portland|OR|50520-8565|2015-02-20 13:02:38 -0800
3|Typewriter Brewery|9795 Collins Inlet|Suite 955|Brooklyn|NY|56497-0283|2015-05-08 13:02:38 -0700
4|Mustache Wax Brewery|8230 Donny Unions|Suite 680|San Diego|CA|10706-0655|2016-08-13 13:02:38 -0700
5|Ironic Tee Brewery|5190 Lakin Stravenue|Suite 649|Seatle|WA|70947|2015-10-19 13:02:38 -0700
6|Cassette Tape Brewery|795 Wisoky Village|Apt. 375|Austin|TX|54178|2012-10-19 13:02:38 -0700
7|Long Playing Record Brewery|17606 Brenden Lakes|Suite 406|San Diego|CA|89126|2015-07-22 13:02:38 -0700
8|Bow Tie Brewery|40914 Braeden Ramp|Suite 432|Portland|OR|63566|2013-07-16 13:02:38 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700
```

The above select show everything (all columns) of the table. We can also
show only selected columns say just the name.

```
sqlite> select name from breweries;
Big Beard Brewery
Flannel Shirt Brewery
Bowler Hat Brewery
Typewriter Brewery
Mustache Wax Brewery
Ironic Tee Brewery
Cassette Tape Brewery
Long Playing Record Brewery
Bow Tie Brewery
Chucky T Brewery
```

or just the city and state.

```
sqlite> select city, state from breweries;
Boulder|CO
San Francisco|CA
Portland|OR
Brooklyn|NY
San Diego|CA
Seatle|WA
Austin|TX
San Diego|CA
Portland|OR
San Diego|CA
```

The general format of the select statement is 

```
select <col_a>, <col_b> ... from <table_name>;
```

Just list the columns you want from the table separated by commas and
`from` the table name.
