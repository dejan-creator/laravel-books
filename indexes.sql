SELECT * 
FROM `words` 
WHERE `word` = 'kissed';

------------------

EXPLAIN
SELECT * 
FROM `words` 
WHERE `word` = 'kissed';

------------------

INSERT
INTO `words`
(`word`)
VALUES
('february');

------------------

INSERT
INTO `words`
(`word`)
VALUES
('February');

------------------ Search for Edmond D... 41 results

SELECT *
FROM `paragraphs`
WHERE `text` LIKE '%Edmond Dantès%';

------------------ 788 results

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('Edmond Dantès')

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('"Edmond Dantès"')

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('+Edmond +Dantès' IN BOOLEAN MODE)


SHOW VARIABLES LIKE 'ft_min%'
