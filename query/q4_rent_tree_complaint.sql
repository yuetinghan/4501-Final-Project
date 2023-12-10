
WITH Rent AS (
    SELECT zipcode, AVG("2023-01-31") AS average_rent
    FROM zillows
    GROUP BY zipcode
    HAVING AVG("2023-01-31") > 0 -- Exclude ZIP codes with an average rent of 0
),
TreeCount AS (
    SELECT zipcode::bigint, COUNT(*) as tree_count
    FROM trees
    GROUP BY zipcode
),
ComplaintCount AS (
    SELECT zipcode::bigint, COUNT(*) as complaint_count
    FROM three11s
    WHERE created_date >= '2023-01-01' AND created_date <= '2023-01-31'
    GROUP BY zipcode
),
RankedRent AS (
    SELECT zipcode, TO_CHAR(average_rent, 'FM9,999,999.99') AS formatted_average_rent, average_rent,
           DENSE_RANK() OVER (ORDER BY average_rent DESC) AS high_rank,
           DENSE_RANK() OVER (ORDER BY average_rent ASC) AS low_rank
    FROM Rent
)

SELECT rr.zipcode, rr.formatted_average_rent, tc.tree_count, cc.complaint_count
FROM RankedRent rr
LEFT JOIN TreeCount tc ON rr.zipcode = tc.zipcode
LEFT JOIN ComplaintCount cc ON rr.zipcode = cc.zipcode
WHERE rr.high_rank <= 5 OR rr.low_rank <= 5
ORDER BY rr.average_rent DESC, rr.high_rank, rr.low_rank;
