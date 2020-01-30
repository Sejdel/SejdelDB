CREATE VIEW highscore AS
    SELECT first_name, last_name, SUM(volume) as total_volume
    FROM pours
    JOIN users on users.id = pours.user_id
    GROUP BY users.id