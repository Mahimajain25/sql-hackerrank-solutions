SELECT CONCAT(Name,'(',SUBSTR(Occupation,1,1),')') AS result
FROM OCCUPATIONS
UNION 
SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.') AS result
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY result ASC