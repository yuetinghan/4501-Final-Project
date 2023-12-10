
SELECT trees.tree_id, trees.species, trees.health, trees.status, ST_AsText(trees.geometry) AS coordinates
FROM trees 
WHERE ST_DWithin(
    ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326)::geography,
    ST_Transform(trees.geometry, 4326)::geography,
    0.5 * 1609.34 -- Convert 0.5 miles to meters
)
