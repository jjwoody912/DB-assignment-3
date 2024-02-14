DROP USER
IF EXISTS 'admin_001'@'%';

CREATE USER
IF NOT EXISTS 'admin_001'@'%';

CREATE USER admin_002 IDENTIFIED BY '123';
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD REUSE INTERVAL 365 DAY;

CREATE USER admin_003 IDENTIFIED BY '321';
 FAILED_LOGIN_ATTEMPTS 0
 PASSWORD_LOCK_TIME 0
 PASSWORD EXPIRE INTERVAL 90 DAY
 PASSWORD REUSE INTERVAL 365 DAY;

CREATE USER admin_004 IDENTIFIED BY '213';
 FAILED_LOGIN_ATTEMPTS 0
 PASSWORD_LOCK_TIME 0
 PASSWORD EXPIRE INTERVAL 90 DAY
 PASSWORD REUSE INTERVAL 365 DAY;

CREATE USER admin_005 IDENTIFIED BY '312';
 FAILED_LOGIN_ATTEMPTS 0
 PASSWORD_LOCK_TIME 0
 PASSWORD EXPIRE INTERVAL 90 DAY
 PASSWORD REUSE INTERVAL 365 DAY;

CREATE USER admin_006 IDENTIFIED BY '231';
 FAILED_LOGIN_ATTEMPTS 0
 PASSWORD_LOCK_TIME 0
 PASSWORD EXPIRE INTERVAL 90 DAY
 PASSWORD REUSE INTERVAL 365 DAY;

CREATE USER admin_007 IDENTIFIED BY '132';
 FAILED_LOGIN_ATTEMPTS 0
 PASSWORD_LOCK_TIME 0
 PASSWORD EXPIRE INTERVAL 90 DAY
 PASSWORD REUSE INTERVAL 365 DAY;

-- Roles
CREATE ROLE read_only_classicmodels_db [AUTHORIZATION admin_001];

CREATE ROLE employees_0 [AUTHORIZATION admin_001];

CREATE ROLE admin_user [AUTHORIZATION admin_001];

CREATE ROLES read_only_employees_db [AUTHORIZATION admin_001];

--Grants
GRANT SELECT ON classicmodels TO read_only_classicmodels_db;

GRANT SELECT ON employees TO read_only_employees_db;

GRANT CREATE, DROP ON employees TO admin_user;

GRANT CREATE, DROP ON classicmodels.* TO admin_user;

GRANT SHOW DATABASES ON TO admin_user;

GRANT INSERT, UPDATE ON employees TO app_user

GRANT admin_007 TO admin_006;

GRANT read_only_classicmodels_db TO admin_001, admin_003;

GRANT read_only_employees_db TO admin_002, admin_004;

GRANT app_user TO admin_006;

GRANT admin_user TO admin_005;
