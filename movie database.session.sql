--cust table
CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150),
    age INTEGER
)

--movies table
CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200)
)

--ticket table
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_date TIMESTAMP WITH TIME ZONE,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
    movie_id INTEGER NOT NULL ,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    ticket_total NUMERIC (7,2)
)


--consession table\
CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    snack_total NUMERIC(6,2),
    ticket_id INTEGER
)
