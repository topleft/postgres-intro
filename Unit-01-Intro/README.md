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

## Installing PostgreSql

Make sure that [Homebrew](http://brew.sh/) has the latest formulas and then install PostgreSql.
When you are done, make sure PostgreSql was installed and set it to auto start whenever you computer starts.

```
brew update
brew install postgres
```

Follow instructions to have postgres start at login.  They probably look something like this:

```
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

(if you ever need to go back to that command, type `brew info postgres`)

Check that `psql` has been installed correctly by typing:

```
psql --version
```

You should see something like: `psql (PostgreSQL) 9.3.2`

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
