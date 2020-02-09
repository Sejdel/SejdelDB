DROP VIEW IF EXISTS pour_feed;

CREATE OR REPLACE VIEW pour_feed AS
    SELECT pours.created_on, pours.volume, pours.cost, beer, description, CONCAT(u1.first_name, ' ' , u1.last_name) AS name, CONCAT(u2.first_name, ' ' , u2.last_name) AS created_by_name
        FROM pours
        JOIN users u1 on u1.id = pours.user_id
        JOIN users u2 on u2.id = pours.created_by
        JOIN kegs on kegs.id = pours.keg_id
        ORDER BY created_on DESC
        LIMIT 50;
