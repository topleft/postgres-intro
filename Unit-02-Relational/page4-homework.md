QL Homework

## Introduction

Suppose we were building an application that allows users to build resumes. In this data model we have tables for `users`, `resumes`, `employments` and `employments_resumes`. Logically in our application, each user may have as many employments and resumes as they want. A resume consists of multiple of employments, for which the relationship is stored in `employments_resumes`.

Recall that `\d` in `PostgreSQL` lists all relations (or tables) in the database, and `\d table_name` lists the specific structure of `table_name`. So to get more details about these tables, spend some time getting familiar with their structure and where they connect (e.g. spots where we can join data).


## Setup

1. At the terminal, in the directory this project was cloned to:
  - `createdb resume_builder`
  - `psql resume_builder -f import_data.sql`
  - `psql -d resume_builder`

## Questions

1. Select the `first_name` and `last_name` for all `users`.

2. Select all `resumes` (all columns).

3. Select all `employments` for `user_id = 3` and `user_id = 4`.

4. Select `first_name`, `last_name`, `title`, `organization`, `start_year`, and `end_year` from the `users` table joined to the `employments` table.

5. Take the query from #4 and sort it by the `start_year` ascending. (hint: read this http://www.postgresql.org/docs/9.1/static/queries-order.html)

6. Select `title`, `organization`, `start_year`, and `end_year` from `employments` for `resume_id = 1` (hint: `\d employments_resumes`)

7. *challenge* Select `first_name`, `last_name` and `count` where `count` is the number of `employments` records for that given user (hint: read http://www.postgresql.org/docs/9.0/static/sql-select.html#SQL-GROUPBY & http://www.postgresql.org/docs/9.1/static/functions-aggregate.html)
