-- #1
SELECT `id`, `date`, YEAR(`date`), MONTH(`date`), DAY(`date`) FROM orders;


-- #2
SELECT `id`, `date`, DATE_ADD(`date`, INTERVAL 1 DAY) `new_date` FROM orders;

-- #3
SELECT `id`, `date`, UNIX_TIMESTAMP(`date`) `timestamp` FROM orders;

-- #4
SELECT COUNT(`id`)  FROM orders WHERE `date` BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- #5
SELECT `id`, `date`, JSON_OBJECT('id', `id`, 'date', `date`) `json` FROM orders;
