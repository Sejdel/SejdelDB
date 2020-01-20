# SejdelDB

## SETUP

1. Install Postgres
2. Install Flyway
3. Add flyway to root:
	- gedit ~/.profile
	- Add the following to the bottom
		- export PATH="$PATH:/home/ ... /flyway-6.1.4"
	- Log out and in
4. Setup psql using this Stackoverflow answer:
	- Login as default user: sudo -i -u postgres
	- Create new User: createuser --interactive
	- When prompted for role name, enter linux username, and select Yes to superuser question.
	- Still logged in as postgres user, create a database: createdb <username_from_step_3>
	- Confirm error(s) are gone by entering: psql at the command prompt.
	- Output should show psql (x.x.x) Type "help" for help.
5. Create a DB and user in psql
	- sudo -u postgres psql
	- postgres=# create database sejdeldb;
	- postgres=# create user flyway with encrypted password '123';
	- postgres=# grant all privileges on database sejdeldb to flyway;
6. Edit the flyway conf found in the flyway installation:
```bash
flyway.url=jdbc:postgresql://localhost:5432/sejdeldb  
flyway.user=flyway  
flyway.password=123
flyway.locations=filesystem:/home/ ... /SejdelDB/sql/
```
7. Test everything by running:
```bash
flyway info
```





