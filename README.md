## Example

```bash
$ git clone https://github.com/eatonphil/gosql
$ cd gosql
$ go run cmd/main.go
# CREATE TABLE users (id INT PRIMARY KEY, name TEXT, age INT);
# INSERT INTO users VALUES (1, 'Corey', 34);
# SELECT * FROM users WHERE id = 1;
```

## Architecture

* [cmd/main.go](./cmd/main.go)
  * Contains the REPL and high-level interface to the project
  * Dataflow is: user input -> lexer -> parser -> in-memory backend
* [lexer.go](./lexer.go)
  * Handles breaking user input into tokens for the parser
* [parser.go](./parser.go)
  * Matches a list of tokens into an AST or fails if the user input is not a valid program
* [memory.go](./memory.go)
  * An example, in-memory backend supporting the Backend interface (defined in backend.go)

## Blog series

* [Writing a SQL database from scratch in Go](https://notes.eatonphil.com/database-basics.html)
* [Binary expressions and WHERE filters](https://notes.eatonphil.com/database-basics-expressions-and-where.html)
* [Indexes](https://notes.eatonphil.com/database-basics-indexes.html)
* [A database/sql driver](https://notes.eatonphil.com/database-basics-a-database-sql-driver.html)
