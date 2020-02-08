ALTER TABLE pours 
    ADD COLUMN created_by INTEGER REFERENCES users(id),
    ADD COLUMN keg_id INTEGER REFERENCES kegs(id);