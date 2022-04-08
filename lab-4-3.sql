-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT name, first_name, last_name, MAX(home_runs)
FROM teams
INNER JOIN stats
ON teams.id = team_id
INNER JOIN players
ON stats.player_id = players.id
WHERE year = 2019;

