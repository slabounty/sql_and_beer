# Chapter 6

## More complex `select` statments

Now that we have the `beers` table with a bit more data, we can take a
look at using some slightly more complex statements. 

Let's try a few simpler ones first. Go ahead and get into the sqlite3
console with

```
$ sqlite3 beer.db
```

Get all the beers
```
sqlite> select * from beers;
-- A big long list of beers should be shown here
```

Show all of the Pilsners

```
sqlite> select * from beers where type = 'Pilsner';
3|0|Jango Fett|Pilsner|6.46|5.93|7.17|2014-11-24 16:25:21 -0800
6|0|Ares|Pilsner|7.41|6.79|8.01|2015-11-19 16:25:21 -0800
30|5|Beregond|Pilsner|7.13|6.44|7.54|2014-04-30 16:25:21 -0700
33|5|Jason|Pilsner|8.62|8.1|9.05|2016-10-08 16:25:21 -0700
49|9|Narchost|Pilsner|8.52|7.8|8.79|2012-12-15 16:25:21 -0800
52|9|Núath|Pilsner|7.94|7.34|8.34|2013-03-22 16:25:21 -0700
```

Use a simple where clause with a math function
Find all the beers where the average cost is greater than $8.50

```
sqlite> select * from beers where average_cost > 8.50;
5|0|Jango Fett|Imperial Pale Ale|8.61|8.15|8.93|2017-06-27 16:25:21 -0700
24|4|Doors of Durin|Wheat Beer|8.64|8.21|9.25|2015-05-04 16:25:21 -0700
32|5|Sunspot|Ale|8.82|8.2|9.35|2014-07-13 16:25:21 -0700
33|5|Jason|Pilsner|8.62|8.1|9.05|2016-10-08 16:25:21 -0700
37|6|Ammo|Stout|8.76|8.47|9.48|2013-04-06 16:25:21 -0700
41|8|Jar Jar Binks|Imperial Pale Ale|8.73|8.4|9.48|2013-09-12 16:25:21 -0700
45|8|The Forsaken Inn|Ale|8.78|8.25|9.45|2016-08-26 16:25:21 -0700
49|9|Narchost|Pilsner|8.52|7.8|8.79|2012-12-15 16:25:21 -0800
50|9|Gimli|Imperial Pale Ale|8.61|8.21|8.89|2016-08-17 16:25:21 -0700
```

We can also Use an `and` in the `where` clause

```
sqlite> select * from beers where type = 'Imperial Pale Ale' and average_cost < 7.00;
11|1|Venom|Imperial Pale Ale|5.69|5.26|6.4|2013-10-08 16:25:21 -0700
31|5|Dark Hope Summers|Imperial Pale Ale|5.94|5.6|6.67|2014-09-23 16:25:21 -0700
```

Or an `or` in the `where` clause

```
sqlite> select * from beers where type = 'Bitter' or highest_cost >
9.00;
21|3|Faramir|Wheat Beer|8.5|8.07|9.14|2014-01-19 16:25:21 -0800
24|4|Doors of Durin|Wheat Beer|8.64|8.21|9.25|2015-05-04 16:25:21 -0700
32|5|Sunspot|Ale|8.82|8.2|9.35|2014-07-13 16:25:21 -0700
33|5|Jason|Pilsner|8.62|8.1|9.05|2016-10-08 16:25:21 -0700
35|6|Hephaestus|Bitter|5.94|5.5|6.3|2016-09-20 16:25:21 -0700
37|6|Ammo|Stout|8.76|8.47|9.48|2013-04-06 16:25:21 -0700
39|7|The Rivers and Beacon-Hills of Gondor|Bitter|7.17|6.42|7.5|2016-05-27 16:25:21 -0700
41|8|Jar Jar Binks|Imperial Pale Ale|8.73|8.4|9.48|2013-09-12 16:25:21 -0700
45|8|The Forsaken Inn|Ale|8.78|8.25|9.45|2016-08-26 16:25:21 -0700
```

And of course, we don't need to get every column, we can just get the
columns we're interested in. The below also shows that we have two beers
name `Aeneas Ale`.

```
sqlite> select name, type, lowest_cost from beers where type = 'Ale' and lowest_cost < 7.00;
Aeneas|Ale|5.14
Aeneas|Ale|5.94
Obi-Wan Kenobi|Ale|6.46```
```
