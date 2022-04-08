-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT id, first_name, last_name
FROM players
WHERE first_name = "Barry" AND last_name = "Bonds";

SELECT SUM(hits)
FROM stats
WHERE player_id = 1678;

SELECT SUM(stats.hits)
FROM players
INNER JOIN stats
ON players.id = stats.player_id
WHERE first_name = "Barry" AND last_name = "Bonds";