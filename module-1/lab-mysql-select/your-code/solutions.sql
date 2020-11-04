-- CHALLENGE 1

SELECT  a.au_id AS 'AUTHOR ID', 	a.au_lname AS 'LAST NAME',
		a.au_fname AS 'FIRST NAME',	titles.title AS 'TITLE',
		publishers.pub_name AS 'PUBLISHER' 

FROM publications.authors AS a
	JOIN titleauthor
		ON a.au_id = titleauthor.au_id
	JOIN titles 
		ON titleauthor.title_id = titles.title_id
	JOIN publishers
		ON titles.pub_id = publishers.pub_id;


-- CHALLENGE 2

SELECT  a.au_id AS `AUTHOR ID`, 	a.au_lname AS `LAST NAME`,
		a.au_fname AS `FIRST NAME`,	publishers.pub_name AS `PUBLISHER` ,
		COUNT(DISTINCT titles.title) AS `TITLE COUNT`
FROM publications.authors AS a
	JOIN titleauthor
		ON a.au_id = titleauthor.au_id
	JOIN titles 
		ON titleauthor.title_id = titles.title_id
	JOIN publishers
		ON titles.pub_id = publishers.pub_id
 
GROUP BY `AUTHOR ID`, PUBLISHER;




-- CHALLENGE 3

SELECT  a.au_id AS `AUTHOR ID`, 	a.au_lname AS `LAST NAME`,
		a.au_fname AS `FIRST NAME`,	SUM(DISTINCT s.qty) AS `TOTAL`

FROM publications.authors AS a
	JOIN titleauthor AS t
		ON a.au_id = t.au_id
	JOIN sales AS s
		ON t.title_id = s.title_id
 
GROUP BY `AUTHOR ID`
ORDER BY `TOTAL` DESC
LIMIT 3;


-- CHALLENGE 4

SELECT  a.au_id AS `AUTHOR ID`, 	a.au_lname AS `LAST NAME`,
		a.au_fname AS `FIRST NAME`,	SUM(DISTINCT s.qty) AS `TOTAL`

FROM publications.authors AS a
	JOIN titleauthor AS t
		ON a.au_id = t.au_id
	JOIN sales AS s
		ON t.title_id = s.title_id
 
GROUP BY `AUTHOR ID`
ORDER BY `TOTAL` DESC;



