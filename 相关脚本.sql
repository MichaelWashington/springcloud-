


DROP DATABASE IF EXISTS cloudDB01;
CREATE database cloudDB01 character SET utf8;
USE cloudDB01;
create TABLE dept
(
	deptno bigint NOT NULL PRIMARY KEY auto_increment,
    dname VARCHAR(60),
    db_source VARCHAR(60)
);

INSERT INTO dept(dname, db_source) VALUES('开发部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('人事部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('财务部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('市场部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('运维部', DATABASE());
select * from dept;


DROP DATABASE IF EXISTS cloudDB02;
CREATE database cloudDB02 character SET utf8;
USE cloudDB02;
create TABLE dept
(
	deptno bigint NOT NULL PRIMARY KEY auto_increment,
    dname VARCHAR(60),
    db_source VARCHAR(60)
);

INSERT INTO dept(dname, db_source) VALUES('开发部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('人事部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('财务部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('市场部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('运维部', DATABASE());
select * from clouddb02.dept;

DROP DATABASE IF EXISTS cloudDB03;
CREATE database cloudDB03 character SET utf8;
USE cloudDB03;
create TABLE dept
(
	deptno bigint NOT NULL PRIMARY KEY auto_increment,
    dname VARCHAR(60),
    db_source VARCHAR(60)
);

INSERT INTO dept(dname, db_source) VALUES('开发部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('人事部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('财务部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('市场部', DATABASE());
INSERT INTO dept(dname, db_source) VALUES('运维部', DATABASE());
SELECT * FROM clouddb03.dept;












