# Chapter 4

## Slightly more complex `select` Statements

In the last chapter, we saw that we could create simple select
statements with all the rows and all or some of the columns. In this
chapter, we'll see how we can select only some of the rows matching some
simple criteria. Let's run our sqlite terminal again.

```
sqlite3 beer.db
```

Now let's say we'd like just the breweries in `CA`.

```
sqlite> select * from breweries where state = 'CA';
1|Flannel Shirt Brewery|14712 Torphy Rue|Apt. 391|San
Francisco|CA|36424|2015-05-28 13:02:38 -0700
4|Mustache Wax Brewery|8230 Donny Unions|Suite 680|San
Diego|CA|10706-0655|2016-08-13 13:02:38 -0700
7|Long Playing Record Brewery|17606 Brenden Lakes|Suite 406|San
Diego|CA|89126|2015-07-22 13:02:38 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San
Diego|CA|96843|2017-06-05 13:02:38 -0700
```

or just the breweries from `San Diego`.


```
sqlite> select * from breweries where state = 'San Diego';
4|Mustache Wax Brewery|8230 Donny Unions|Suite 680|San
Diego|CA|10706-0655|2016-08-13 13:02:38 -0700
7|Long Playing Record Brewery|17606 Brenden Lakes|Suite 406|San
Diego|CA|89126|2015-07-22 13:02:38 -0700
9|Chucky T Brewery|77283 Fadel Corner|Apt. 784|San
Diego|CA|96843|2017-06-05 13:02:38 -0700
```

We can just get the names of breweries in `CA` with what we learned in the
last chapter.

```
sqlite> select name from breweries where state = 'CA';
Flannel Shirt Brewery
Mustache Wax Brewery
Long Playing Record Brewery
Chucky T Brewery
```
