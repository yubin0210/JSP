<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<details>
	<summary>
		SQL
	</summary>
	<fieldset>
		<pre>
drop table member purge;
drop table board purge;

create sequence member_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocycle
    nocache;
    
create sequence board_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocycle
    nocache;
    
create table member (
    idx         number          default member_seq.nextval primary key,
    userid      varchar2(100)   unique not null,
    userpw      varchar2(500)   not null,
    username    varchar2(100)   not null,
    email       varchar2(100)   not null,
    gender      varchar2(50)    check(gender in ('남성', '여성'))
);

create table board (
    idx         number          default board_seq.nextval primary key,
    title       varchar2(500)   not null,
    writer      varchar2(100)   not null,
    content     varchar2(4000)  not null,
    writeDate   date            default sysdate,
    
    constraint board_member_fk
    foreign key(writer)
    REFERENCES member(userid)
);

desc member;
desc board;

insert into board (title, writer, content) values ('111', 'test', '1111');
insert into board (title, writer, content) values ('222', 'test2', '2222');
commit;
</pre>

	</fieldset>
</details>
	
</body>
</html>