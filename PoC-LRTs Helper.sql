-- ------- You need to execute this SQL Helper after you collect the responses ---------------

-- ================ ============= ============= ============= Additional Review /Apply to Sever ============= ============= ============= =============
UPDATE `exam` SET `word` = 'وَحِّدْ' WHERE `exam`.`id` = 116;

UPDATE `exam` SET `word` = 'يُكَّفِي' WHERE `exam`.`id` = 121;

UPDATE `exam` SET `word` = 'أَذٍ' WHERE `exam`.`id` = 168;

UPDATE `exam` SET `word` = 'وَحَّدَ' WHERE `exam`.`id` = 176;

-- -- -- -- -- -- -- -- Modify (alter) answers table -- -- -- -- -- -- -- --
ALTER TABLE `answers` ADD `test` TINYINT(2) NULL ;

ALTER TABLE `answers` ADD `FN` SMALLINT(2) NOT NULL ;
ALTER TABLE `answers` ADD `FP` SMALLINT(2) NOT NULL DEFAULT '-1' ;


--SELECT count(*) FROM `answers` WHERE answer like '%,10,11,%' ORDER BY answer

UPDATE `answers` SET `test` = '1' WHERE `answers`.`answer` like '%,10,11,%';

UPDATE `answers` SET `test` = '2' WHERE `answers`.`answer` like '%,120,119,%'

UPDATE `answers` SET `test` = '3' WHERE `answers`.`answer` like '%,123,124,%'


-- -- -- -- -- -- -- -- -- -- -- -- -- For import to excel (by test) -- -- -- -- -- -- -- -- -- -- -- --
-- SELECT participants_id, answer, words_correct, nw_correct FROM `answers` WHERE test = 1

SELECT participants_id, words_correct, nw_correct, answer FROM `answers` WHERE test = 1 order by answer;

SELECT participants_id, words_correct, nw_correct, answer, test FROM `answers` WHERE test = 2 order by answer;

SELECT participants_id, words_correct, nw_correct, answer, test FROM `answers` WHERE test = 3 order by answer;


-- -- -- -- -- -- -- -- -- -- -- -- -- Helper SQL for computing score -- -- -- -- -- -- -- -- -- -- -- -- --
SELECT words_correct as wAcc, nw_correct as nwAcc,  ((((words_correct/40) + (nw_correct/20))*100.0) / 2.0) as score, test FROM answers an order BY test ASC;

SELECT ROUND(  ((((words_correct/40) + (nw_correct/20))*100.0) / 2.0), 2  ) as score, test FROM answers an order BY test ASC

SELECT ROUND( avg ( ((((words_correct/40) + (nw_correct/20))*100.0) / 2.0)),2) as avg_score, test FROM answers an group BY test ASC


-- -- -- -- -- -- -- -- -- -- -- -- -- Helper SQL Updates -- -- -- -- -- -- -- -- -- -- -- -- --

UPDATE `answers` SET `FN` = 40 - words_correct;
UPDATE `answers` SET `FP` = 20 - nw_correct;

-- -- -- -- -- -- -- -- -- -- -- -- -- Helper SQL for calculating P, R and F-measure -- -- -- -- -- -- -- -- -- -- -- -- --

--- For words --- -- -- -
SELECT ROUND((words_correct/(words_correct+FP)), 2) as Pw, ROUND((words_correct/ 40 ), 2) as  Rw, test FROM answers an order BY test;
-- P & R -- -- -- -
SELECT ROUND( AVG(words_correct/(words_correct+FP)), 2) as Pw, ROUND( AVG(words_correct/ 40 ), 2) as  Rw, test FROM answers an GROUP BY test;
-- P, R & F -- -- -- -
SELECT ROUND( AVG(words_correct/(words_correct+FP)), 2) as Pw, ROUND( AVG(words_correct/ 40 ), 2) as  Rw,  ROUND( avg (2* (words_correct/(words_correct+FP)) * (words_correct/40) / ((words_correct/(words_correct+FP)) + (words_correct/ 40 ) ) ), 2) as F, test FROM answers an GROUP BY test

--- For Nonwords --- -- -- -
SELECT ROUND((nw_correct/(nw_correct+FN)), 2) as Pnw, ROUND((nw_correct/ (nw_correct+FP) ), 2) as  Rnw, test FROM answers an order BY test;
-- P & R --
SELECT ROUND( avg(nw_correct/(nw_correct+FN)), 2) as Pnw, ROUND( avg(nw_correct/ (nw_correct+FP)), 2) as  Rnw, test FROM answers an GROUP BY test;
-- P, R & F -- -- -- --- -- -
SELECT ROUND( avg(nw_correct/(nw_correct+FN)), 2) as Pnw, ROUND( avg(nw_correct/ (nw_correct+FP)), 2) as  Rnw, ROUND( avg ( (2*(nw_correct/(nw_correct+FN))*(nw_correct/ (nw_correct+FP))) / ((nw_correct/(nw_correct+FN))+(nw_correct/ (nw_correct+FP)))), 2) as F, test FROM answers an GROUP BY test

