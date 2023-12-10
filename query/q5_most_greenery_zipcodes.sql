
SELECT z.zipcode, COUNT(t.tree_id) AS total_trees
FROM zipcodes z 
JOIN trees t ON z.zipcode = t.zipcode 
WHERE ST_Within(t.geometry, z.geometry)
GROUP BY z.zipcode
ORDER BY total_trees DESC
LIMIT 10;
