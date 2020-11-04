prompt PL/SQL Developer Export User Objects for user SYSTEM@XE
prompt Created by josep on Thursday, September 3, 2020
set define off
spool tables.log

prompt
prompt Creating table TEAM
prompt ===================
prompt
create table SYSTEM.TEAM
(
  tname                 CHAR(20) not null,
  city                  CHAR(20) not null,
  manager               CHAR(20) not null,
  division              CHAR(20) not null,
  league                CHAR(20) not null,
  currentrecord         CHAR(20) not null,
  numberofchampionships INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.TEAM
  add primary key (TNAME)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AWAYTEAM
prompt =======================
prompt
create table SYSTEM.AWAYTEAM
(
  homename CHAR(20) not null,
  awayname CHAR(20) not null,
  tname    CHAR(20) not null,
  gdate    INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.AWAYTEAM
  add primary key (AWAYNAME)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.AWAYTEAM
  add foreign key (TNAME)
  references SYSTEM.TEAM (TNAME);
alter table SYSTEM.AWAYTEAM
  add foreign key (HOMENAME)
  references SYSTEM.HOMETEAM (HOMENAME);

prompt
prompt Creating table HOMETEAM
prompt =======================
prompt
create table SYSTEM.HOMETEAM
(
  homename CHAR(20) not null,
  awayname CHAR(20) not null,
  tname    CHAR(20) not null,
  gdate    INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.HOMETEAM
  add primary key (HOMENAME)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.HOMETEAM
  add foreign key (AWAYNAME)
  references SYSTEM.AWAYTEAM (AWAYNAME);
alter table SYSTEM.HOMETEAM
  add foreign key (TNAME)
  references SYSTEM.TEAM (TNAME);

prompt
prompt Creating table PLAYER
prompt =====================
prompt
create table SYSTEM.PLAYER
(
  pid    INTEGER not null,
  pfname CHAR(20) not null,
  plname CHAR(20) not null,
  weight INTEGER not null,
  height INTEGER not null,
  age    INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.PLAYER
  add primary key (PID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BATTER
prompt =====================
prompt
create table SYSTEM.BATTER
(
  pid         INTEGER not null,
  stolenbases INTEGER not null,
  doubles     INTEGER not null,
  battingavg  FLOAT not null,
  hr          INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.BATTER
  add foreign key (PID)
  references SYSTEM.PLAYER (PID);

prompt
prompt Creating table PITCHER
prompt ======================
prompt
create table SYSTEM.PITCHER
(
  pid        INTEGER not null,
  strikeouts INTEGER not null,
  whip       FLOAT not null,
  saves      FLOAT not null,
  era        FLOAT not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSTEM.PITCHER
  add foreign key (PID)
  references SYSTEM.PLAYER (PID);


prompt Done
spool off
set define on
