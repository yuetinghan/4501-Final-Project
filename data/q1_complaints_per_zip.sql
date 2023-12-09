
SELECT e.zipcode, COUNT(*) AS ComplaintCount
FROM  Three11s e
WHERE e.created_date >= '2022-10-01' AND e.created_date <= '2023-09-30'
GROUP BY e.zipcode
ORDER BY ComplaintCount DESC;
