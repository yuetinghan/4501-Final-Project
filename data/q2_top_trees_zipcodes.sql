
SELECT zipcode, COUNT(*) AS NumberOfTrees
FROM trees
GROUP BY zipcode
ORDER BY NumberOfTrees DESC
LIMIT 10;
