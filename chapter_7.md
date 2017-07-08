# Chapter 7

## Simple math statements `count` `average`, and `round`  (and `sum`)

Let's try doing some simple math on the database. First, let's get into
the sqlite console.

```
$ sqlite3 beer.db
```

Now let's find out how many IPAs we have.

```
sqlite> select count(*) from beers where type = 'Imperial Pale Ale';
6
```

or the number of bitters

```
sqlite> select count(*) from beers where type = 'Bitter';
2
```

We can also averages. Let's find the average average cost of a the Wheat
Beers

```
sqlite> select avg(average_cost) from beers where type = 'Wheat Beer';
7.032
```

or since it's money, let's round to 2 decimal places.

```
sqlite> select round(avg(average_cost), 2) from beers where type = 'Wheat Beer';
7.03
```

I've mostly tried to stay away from "non-real" queries so far, but `sum`
fits in here so we'll use it for something so you can see it, but I'll
admit it doesn't make a lot of sense in this context. It'd make more
sense if we had a barrels brewed per year column or similar, but let's
make do with what we have.

```
sqlite> select round(sum(average_cost), 2) from beers where type = 'Porter';
13.83
```

Find the minimum and maximum average cost of the red ales.

```
sqlite> select min(average_cost), max(average_cost) from beers where type = 'Red Ale';
5.14|8.25
```

There's a number of other math functions you can use, check the sqlite
documentation for them.
