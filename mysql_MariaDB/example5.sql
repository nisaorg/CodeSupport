SELECT precio
FROM libro
GROUP BY precio
HAVING precio<8
WHERE precio<11
ORDER BY precio DESC;


SELECT precio, COUNT(*)
FROM libro
WHERE precio>=8
GROUP BY precio
HAVING precio<=11
ORDER BY COUNT(*) DESC;