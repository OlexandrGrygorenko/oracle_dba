shu immediate;
startup mount;
select name,open_mode ,database_role from v$database;
alter database recover managed standby database disconnect from session;
alter database recover managed standby database cancel;
alter database recover managed standby database finish;
alter database activate standby database;
select name,open_mode ,database_role from v$database;
alter database open;
select name,open_mode ,database_role from v$database;
select instance_name, status from v$instance;

