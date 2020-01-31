DROP VIEW IF EXISTS highscore;

CREATE OR REPLACE VIEW highscore AS
    SELECT CONCAT(first_name, ' ' , last_name) AS name, SUM(volume) as total_volume
    FROM pours
    JOIN users on users.id = pours.user_id
    GROUP BY users.id
    ORDER BY total_volume DESC