
WITH TopTreeZipCodes AS (
    SELECT zipcode, COUNT(*) AS total_trees
    FROM trees
    GROUP BY zipcode
    ORDER BY COUNT(*) DESC
    LIMIT 10
)
SELECT t.zipcode, TO_CHAR(AVG(z."2023-08-31"), 'FM9,999,999.99') AS average_rent
FROM TopTreeZipCodes t
JOIN zillows z ON t.zipcode::bigint= z.zipcode
GROUP BY t.zipcode, t.total_trees
ORDER BY t.total_trees DESC;
