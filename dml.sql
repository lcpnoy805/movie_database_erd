insert into customers(
	cust_id,
	first_name,
	last_name,
	email,
	age
) 
values (
	1,
	'Roger',
	'Dodger',
	'rogerdodger@gmail.com',
	'46'
);

insert into movies (
	movie_id,
	title
) 
values (
	1,
	'Ghostbusters II'
);

insert into tickets (
	ticket_id,
	ticket_date,
	cust_id,
    movie_id,
	ticket_total
)
values (
	1,
	CURRENT_TIMESTAMP,
	1,
	1,
	1
);