--memberTBL
--아이디(문자 15) pk --userid
--비밀번호(문자 20) not null --password
--이름(문자 20) not null --name
--성별(문자 10) not null --gender
--이메일(문자 50) not null --email
select*from memberTBL;

create table memberTBL(
	userid varchar2(15),
	password varchar2(20) not null,
	name varchar2(20) not null,
	gender varchar2(10) not null,
	email varchar2(50) not null,
	constraint memberTBL_pk primary key(userid)
);

-- 멤버 한명 삽입
insert into memberTBL(userid, password, name, gender, email)
values('hong123','hong1234','홍길동','남','hong123@gmail.com' );