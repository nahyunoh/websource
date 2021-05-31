--bookTBL
--code(숫자4자리), title(문자 varchar2 50) 
--writer(문자), price (숫자)
--code pk
select * from BOOKTBL;


CREATE TABLE bookTBL(
	code number(4),
	title varchar2(50) not null,
	writer varchar2(50) not null,
	price number not null,
	constraint bookTBL_pk primary key(code)
	);
	
--insert 5개
insert into bookTBL(code, title, writer, price)
values(1000,'이것이 자바다','신용권',32000);
insert into bookTBL(code, title, writer, price)
values(1001,'이것이 오라클이다','우재남',32000);
insert into bookTBL(code, title, writer, price)
values(1002,'점프 투 파이썬','박종용',28000);
insert into bookTBL(code, title, writer, price)
values(1003,'HTML5_CSS3','고경희',30000);
insert into bookTBL(code, title, writer, price)
values(1004,'JAVA ESSENTIAL','황기태',36000);



	