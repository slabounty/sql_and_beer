# Chapter 9

## Multiple Table Queries

Here's where the "relational" part of relational databases comes in to
play. You probably noticed the `id` columns in both the breweries and
beers tables. And, within the beers table, there's the brewery_id
column. These are the columns that we use to cross reference the tables.
For example, if we find the Venom Imperial Ale in the console

```
$ sqlite3 beer.db
```

```
sqlite> .headers ON
sqlite> select * from beers where name = 'Venom' and type = 'Imperial Pale Ale';
id|brewery_id|name|type|average_cost|lowest_cost|highest_cost|introduced_at
11|1|Venom|Imperial Pale Ale|5.69|5.26|6.4|2013-10-08 16:25:21 -0700
```

First we turn the headers on. This new command will show all column
names when we run our commands and this will in turn let us match the
columns up. We can see here that the Venom IPA has an `id` of `11` and a
brewery_id of `1`. Now lets see if we can't find that brewery.

```
sqlite> select * from breweries where id = 1;
id|name|address_1|address_2|city|state|zip|established_at
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700
```

This tells us that the Venom IPA comes from the Flannel Shirt Brewery in
San Francisco ... possibly run out of someone's apartment.

We can also generate information from multiple tables. Say listing all
the beers and their breweries.

```
sqlite> select * from breweries, beers where beers.brewery_id == breweries.id;
id|name|address_1|address_2|city|state|zip|established_at|id|brewery_id|name|type|average_cost|lowest_cost|highest_cost|introduced_at
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|0|0|Green Galactus|Lager|5.16|4.57|5.89|2014-11-07 16:25:21 -0800
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|1|0|Ben Solo|Red Ale|8.25|7.7|8.58|2016-03-13 16:25:21 -0700
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|2|0|Vista|Lager|7.25|6.51|7.86|2014-07-22 16:25:21 -0700
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|3|0|Jango Fett|Pilsner|6.46|5.93|7.17|2014-11-24 16:25:21 -0800
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|4|0|Aeneas|Ale|5.64|5.14|6.24|2016-12-07 16:25:21 -0800
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|5|0|Jango Fett|Imperial Pale Ale|8.61|8.15|8.93|2017-06-27 16:25:21 -0700
0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700|6|0|Ares|Pilsner|7.41|6.79|8.01|2015-11-19 16:25:21 -0800
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700|7|1|Vaiya|Red Ale|6.8|6.32|7.19|2015-09-21 16:25:21 -0700
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700|8|1|Molten Man Ivy|Red Ale|5.14|4.58|5.79|2014-04-08 16:25:21 -0700
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700|11|1|Venom|Imperial Pale Ale|5.69|5.26|6.4|2013-10-08 16:25:21 -070--- a bunch more beers/breweries 

--- Quite a few more breweries / beers

8|Bow Tie Brewery|40914 Braeden Ramp|Suite 432|Portland|OR|63566|2013-07-16 13:02:38 -0700|44|8|Máhanaxar|Red Ale|6.66|6.37|7.06|2013-11-17 16:25:21 -0800
8|Bow Tie Brewery|40914 Braeden Ramp|Suite 432|Portland|OR|63566|2013-07-16 13:02:38 -0700|45|8|The Forsaken Inn|Ale|8.78|8.25|9.45|2016-08-26 16:25:21 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|46|9|Jar Jar Binks|Stout|6.23|5.78|6.59|2016-03-24 16:25:21 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|47|9|Luthany|Stout|5.07|4.64|5.55|2013-09-10 16:25:21 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|48|9|Anakin Skywalker|Barley Wine|8.17|7.77|8.46|2013-11-05 16:25:21 -0800
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|49|9|Narchost|Pilsner|8.52|7.8|8.79|2012-12-15 16:25:21 -0800
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|50|9|Gimli|Imperial Pale Ale|8.61|8.21|8.89|2016-08-17 16:25:21 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|51|9|Boba Fett|Red Ale|5.6|5.13|6.26|2014-02-11 16:25:21 -0800
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700|52|9|Núath|Pilsner|7.94|7.34|8.34|2013-03-22 16:25:21 -0700
```

Or we can find just the IPAs
```
sqlite> select * from beers, breweries where beers.type = 'Imperial Pale Ale' and beers.brewery_id == breweries.id;
id|brewery_id|name|type|average_cost|lowest_cost|highest_cost|introduced_at|id|name|address_1|address_2|city|state|zip|established_at
5|0|Jango Fett|Imperial Pale Ale|8.61|8.15|8.93|2017-06-27 16:25:21 -0700|0|Big Beard Brewery|92452 Hardy Inlet|Suite 306|Boulder|CO|28972-3899|2016-04-13 13:02:38 -0700
11|1|Venom|Imperial Pale Ale|5.69|5.26|6.4|2013-10-08 16:25:21 -0700|1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700
22|3|Beregond|Imperial Pale Ale|8.1|7.81|8.59|2015-01-06 16:25:21 -0800|3|Typewriter Brewery|9795 Collins Inlet|Suite 955|Brooklyn|NY|56497-0283|2015-05-08 13:02:38 -0700
31|5|Dark Hope Summers|Imperial Pale Ale|5.94|5.6|6.67|2014-09-23 16:25:21 -0700|5|Ironic Tee Brewery|5190 Lakin Stravenue|Suite 649|Seatle|WA|70947|2015-10-19 13:02:38 -0700
41|8|Jar Jar Binks|Imperial Pale Ale|8.73|8.4|9.48|2013-09-12 16:25:21 -0700|8|Bow Tie Brewery|40914 Braeden Ramp|Suite 432|Portland|OR|63566|2013-07-16 13:02:38 -0700
50|9|Gimli|Imperial Pale Ale|8.61|8.21|8.89|2016-08-17 16:25:21 -0700|9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San Diego|CA|96843|2017-06-05 13:02:38 -0700
```

Or we can find just a single IPA

```
sqlite> select * from beers, breweries where beers.name = 'Venom' and beers.type = 'Imperial Pale Ale' and beers.brewery_id == breweries.id;
id|brewery_id|name|type|average_cost|lowest_cost|highest_cost|introduced_at|id|name|address_1|address_2|city|state|zip|established_at
11|1|Venom|Imperial Pale Ale|5.69|5.26|6.4|2013-10-08 16:25:21 -0700|1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San Francisco|CA|36424|2015-05-28 13:02:38 -0700
```

This is probably more information that we'd want, but we can select just
the columns that we're interested in also.

```
sqlite> select beers.name, beers.type, breweries.name, breweries.city, breweries.state from beers, breweries where beers.name = 'Venom' and beers.type = 'Imperial Pale Ale' and beers.brewery_id == breweries.id;
name|type|name|city|state
Venom|Imperial Pale Ale|Flannel Shirt Brewery|San Francisco|CA
```

Notice here, that we prefaced the columns with their table names.
Strictly speaking, you'll only need to do this when there are duplicate
column names between the tables (here `name`, but I find it helpful to always put
that in.
