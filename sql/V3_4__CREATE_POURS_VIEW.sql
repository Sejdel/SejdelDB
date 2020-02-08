CREATE VIEW pour_feed AS
    SELECT pours.created_on, pours.volume, pours.cost, beer, description, first_name, last_name
        FROM pours
        JOIN users on users.id = pours.user_id
        JOIN kegs on kegs.id = pours.keg_id
        ORDER BY created_on DESC
        LIMIT 50;
