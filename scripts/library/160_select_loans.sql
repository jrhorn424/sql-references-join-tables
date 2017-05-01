-- What are the books on loan on or after July 2016?
-- What are the borrowers' last names?
-- What is the term of the loan?

SELECT bk.title, br.last_name, l.start_on, l.end_on
FROM books bk
INNER JOIN loans l
  ON bk.id = l.book_id
INNER JOIN borrowers br
  ON l.borrower_id = br.id
WHERE l.start_on > '2016-07-01'
;
