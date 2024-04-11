Thank you Cockroach Labs!<br/>
https://www.cockroachlabs.com/blog/sql-cheat-sheet/ <br/>
Also thank you w3schools!!!<br/>
https://www.w3schools.com/sql/sql_ref_keywords.asp  

# Starting SQL
There are many RDBMS (Relational Database Management System) out there, but here I wiil use PostgreSQL, also called postgres.<br/>
You don't have to install anything to learn SQL (go here https://sqliteonline.com/.) Or, if you want something installed on your PC and can be used offline, use PGAdmin. 

## Basic Syntax and Rules
```SQL
CREATE TABLE mytable(); -- Make a blank table
```
- Semicolon `;` is used as the end of every "command" or in SQL is called token
- `CREATE TABLE` is a **keyword** and `mytable` is called **identifier**. The `()` means `mytable` has "something inside" (usually columns for table). if the word (or string of character) is already a keyword (for example: name, check if that word change color), you can't make it into identifier, _UNLESS_ you quote it.
- The conventional way is **UPPERCASE** for **KEYWORD** and **lowercase** for **identifier**. (look at create table example) 
- Keywords and unquoted identifiers are CASE-**IN**SENSITIVE. For quoted identifiers, the rule of thumb: `FOO` = `foo` (default convention) = `"foo"` !== `"Foo"` !== `"FOO"`
- Commenting: use `--` for in-line comment and `/* something*/` for multi-line comment.

## Basic Commands
NOTES: SQL are not case sensitive (as I know), so `select` and `SELECT` will be the same. <br/>
Also... SQL is always ended with `;` <br/>
### Create database
```SQL
CREATE DATABASE mydatabase;
```
### Create table with columns
```SQL
CREATE TABLE mytable(
  username varchar, -- username = identifier, varchar = data type of column username
  idnum serial,
  join_date timestamp
);
```
> [!TIP]
> To see all tables and columns in a database (if you are using PGAdmin), expand database drop-down, expand `Schemas`, expand `public` (or something else if it's not public, until you see tables) find tables, expand the table to see the columns.
### Edit columns of a database (rename, change data type)
### Input row data 
### Get data from database (`SELECT`)
```SQL
SELECT * FROM mytable; -- select all columns in mytable table
SELECT username, idnum FROM mytable; -- only mentioned columns are shown
```

