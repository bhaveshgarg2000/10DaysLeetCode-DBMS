SELECT id,
CASE
WHEN p_id IS NULL THEN 'Root'
WHEN p_id IS NOT NULL and id in(SELECT p_id FROM Tree) THEN 'Inner'
ELSE 'Leaf'
END AS type
FROM Tree