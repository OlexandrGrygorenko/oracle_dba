-- Noarchivelog
sqlplus '/ as sysdba'
select instance_name, status from v$instance;
select log_mode from v$database;
shu immediate;
startup mount;
select log_mode from v$database;
alter database flashback off;
alter database noarchivelog;
select log_mode from v$database;
alter database open;



-- Archivelog
sqlplus '/ as sysdba'
select instance_name, status from v$instance;
select log_mode from v$database;
shu immediate;
startup mount;
select log_mode from v$database;
alter database flashback on;
alter database archivelog;
select log_mode from v$database;
alter database open;
