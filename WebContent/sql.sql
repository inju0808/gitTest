drop table memberList CASCADE CONSTRAINTS;
drop table freebulletincomm;
drop table freebulletinboard;
DROP SEQUENCE boardNum;
DROP SEQUENCE commentNum;

create table memberList(--name�� pk
	m_name varchar2(30) not null,
	m_Email varchar2(50) not null,
	password varchar2(50),
	constraint m_name_pk primary key(m_name)
);

create table freebulletinboard(--name�� fk
	boardNum number,
	title varchar2(50),
	name varchar2(30),
	email varchar2(40),
	day date,
	fileName varchar2(300),
	content varchar2(1000),
	commentNum number,
	constraint boardNum_pk primary key(boardNum),
	constraint name_fk foreign key(name) references memberList(m_name)
);

create table freebulletincomm(--nickName�� fk
	boardNum number,
	nickName varchar2(30),
	content2 varchar2(100),
	day2 date,
	constraint boardNum_fk foreign key(boardNum) references freebulletinboard(boardNum),
	constraint nickName_fk foreign key(nickName) references memberList(m_name)
);

create sequence boardNum start with 1 increment by 1;
create sequence commentNum start with 1 increment by 1;


insert into memberList values('admin', 'admin@naver.com', 'admin');
insert into memberList values('sungjin', 'sungjin@naver.com', '1234');
insert into memberList values('sungjin2', 'sungjin2@naver.com', '1234');
insert into freebulletinboard values(boardNum.nextval,'����1', 'sungjin', 'sungjin@naver.com', sysdate, 'filename', '�Խñ� ����', 2);
insert into freebulletinboard values(boardNum.nextval,'����2', 'sungjin2', 'sungjin2@naver.com', sysdate, 'filename', '�Խñ� ����2', 3);
insert into freebulletincomm values(1, 'sungjin', '�ȳ��ϼ��� ����Դϴ�.', sysdate);
insert into freebulletincomm values(2, 'sungjin2', '�ȳ��ϼ��� ���2�Դϴ�', sysdate);


select * from  freebulletinboard;
select * from  freebulletincomm;
select * from memberList;