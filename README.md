# Introduction to relational databases

## References

* [Relational Database](http://en.wikipedia.org/wiki/Relational_database)
* [PostgreSql](http://www.postgresql.org/)
* [PostgreSql Documentation](http://www.postgresql.org/docs/9.3/static/index.html)

## Goals
A student should be able to:

* Understand what a relational database is and why you use it
* Undertand the parts of a relational database
    * Table
    * Row
    * Column
* create a new database
* create a new table
* insert data into a table
* display all rows from a table
* display a certain subset of columns for a row
* display specific rows from a table using a where clause
* update a set of rows
* delete one/many rows
* drop a table/database

## XP practices learned

## Tech skill learned

* PostgreSql
* psql
* SQL

## Installing PostgreSql

Make sure that [Homebrew](http://brew.sh/) has the latest formulas and then install PostgreSql.
When you are done, make sure PostgreSql was installed and set it to auto start whenever you computer starts.

```
$ brew update
Updated Homebrew from ddfda9d0 to 1199c138.
$ brew install postgres
==> Installing postgresql dependency: ossp-uuid
** Lots of other output **
==> Installing postgresql
** Lots of other output **
/usr/local/Cellar/postgresql/9.3.2: 2924 files, 39M
$ psql \--version
psql (PostgreSQL) 9.3.2
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

## Creating users in PostgreSql

Just like you have users on your computer, Postgres allows us to create users that have access to the databases within PostgreSql.
This series of steps will create a user named gschool_user, ask for a password and give it the proper permissions in PostgreSql. You should use gschool_user
as the user name and password as the password. You will use this username/password combination
when we start accessing the database from our Ruby applications.

```
$ createuser \--pwprompt \--interactive gschool_user
Enter password for new role:
Enter it again:
Shall the new role be a superuser? (y/n) n
Shall the new role be allowed to create databases? (y/n) y
Shall the new role be allowed to create more new roles? (y/n) y
```

## Background on relational databases

* [Creating a Database](http://www.postgresql.org/docs/9.3/static/manage-ag-createdb.html)
* [Tables/Data Definition](http://www.postgresql.org/docs/9.3/static/ddl-basics.html)
* Rows
    * [Primary key](http://www.postgresql.org/docs/9.3/static/ddl-constraints.html#DDL-CONSTRAINTS-PRIMARY-KEYS)
* Columns
    * [Data types](http://www.postgresql.org/docs/9.3/static/datatype.html)
    * [Default values](http://www.postgresql.org/docs/9.3/static/ddl-default.html)
    * [Null / Not null](http://www.postgresql.org/docs/9.3/static/ddl-constraints.html#AEN2463)
* [Inserting data](http://www.postgresql.org/docs/9.3/static/dml-insert.html)
* [Querying data](http://www.postgresql.org/docs/9.3/static/queries-overview.html)
    * [Filtering with WHERE](http://www.postgresql.org/docs/9.3/static/queries-table-expressions.html#QUERIES-WHERE)
* [Updating data](http://www.postgresql.org/docs/9.3/static/dml-update.html)
* [Deleting data](http://www.postgresql.org/docs/9.3/static/dml-delete.html)

## [Demo](https://github.com/gSchool/intro_to_sql_demo)

Implement database to hold the items from the tested Sinatra homework.

1. Create a new database called 'tested_sinatra'.
    * from within PSQL
    * using `createdb` command
    * using a .sql file -`psql -d postgres -f create_tested_sinatra_database.sql`
1. Create items table
    * What columns do I need?
    * How do I autoincrement id?
1. From psql, insert 5 rows of data
1. From psql, display all rows in the items table
1. From psql, display only name column for all rows of data
1. From psql, display one row using where clause
1. From psql, update one row to have a different name
1. From psql, delete one row.
1. From psql, drop the items table.
1. From psql, drop the tested_sinatra database.

Now your turn...a volunteer please.

## Homework

You should fork and clone [this repository](https://github.com/gSchool/introduction_to_sql_homework).
Your homework will consist of two .sql files, one to create the database and one that contains
all of the other commands.
We will grade this homework by running the files
against our local servers and expect them to run without errors the first time.
You can experiment in psql with each of the commands
before saving the command to the .sql file. Remember that once
you create a database or a table, you will need to drop it before
creating it again. You can make sure you files run by using the following
commands from the command line:

* `psql -d postgres -U gschool_user -f create_url_shortener_database.sql`
* `psql -d url_shortener_(your_first_name)_(your_last_name) -U gschool_user -f all_of_the_other_commands.sql`

1. Create a new database called 'url_shortener_(your_first_name)\_(your_last_name)'.
1. Create a new table called 'urls'. This table should have the columns that you need to store
a shortened URL (id, original_url and count)
    * The id field should be the primary key and should auto increment.
    * The original_url column should not allow null values.
    * The count field should default to 0.
1. Insert 5 rows of data into the 'urls' table.
    * Give each one a different original_url.
    * Give each one a different count.
1. Display all of the rows in the urls table with all of the columns
1. Display all of the rows in the urls table with only the original_url column
1. Display one row from the urls table with a specific id
1. Display one row from the urls table with a specific original_url
1. Update one of the rows with a specific id to have a new count
1. Delete one row that matches an original_url
