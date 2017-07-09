# Chapter 8

## Using Distinct
One other thing you might need to do is find the 
`distinct` types of things. This might be things like all the cities
your users live in or in our case all the beer types.


Let's try finding all of the types of beer in our database. First,
let's get into the sqlite console.

```
$ sqlite3 beer.db
```

```
sqlite> select distinct type from beers;
Lager
Red Ale
Pilsner
Ale
Imperial Pale Ale
Wheat Beer
Stout
Porter
Bitter
Barley Wine
```

Or we could find all the cities and states that our breweries are in.

```
sqlite> select distinct city, state from breweries;
Boulder|CO
San Francisco|CA
Portland|OR
Brooklyn|NY
San Diego|CA
Seatle|WA
Austin|TX
```

Here, we've asked for the distinct city and state and if we'd had two
cites with the same name, we'd get them both back.
