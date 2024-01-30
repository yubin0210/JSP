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

<details>
	<summary>SQL (reply)</summary>
	<fieldset>
	<pre>select * from member;
select idx, title, writer, writeDate from board order by idx desc;

desc member;

create table reply (
    idx         number          generated as identity primary key,
    board_idx   number          not null, -- 원본 게시글 번호
    writer      varchar2(100)   not null,
    content     varchar2(2000)  not null,
    writeDate   date            default sysdate,
    
    constraint reply_board_fk
    foreign key(board_idx)
    REFERENCES board(idx),
    
    constraint reply_member_fk
    foreign key(writer)
    REFERENCES member(userid)
);
insert into reply (board_idx, writer, content) 
    values (
        9,      -- 댓글을 작성할 게시글의 번호
        'test', -- 댓글을 작성할 회원의 userid
        '이봐 젊은이, 전쟁을 그만두고 사랑을 하라구'  -- 내용
    );
insert into reply (board_idx, writer, content) values (
    10, 'test2', '10-1'
);
insert into reply (board_idx, writer, content) values (
    10, 'test', '10-2'
);
insert into reply (board_idx, writer, content) values (
    8, 'test', '8-1'
);
select * from board order by idx desc;    

select * from reply 
    where board_idx = 10
    order by idx;
    
commit;
-- 모든 댓글 개수
select count(*) from reply;
select * from reply;

-- 특정 게시글에 작성된 댓글의 개수
select count(*) from reply where board_idx = 10;

-- 서로 다른 테이블에서 컬럼을 불러올때는 테이블.컬럼 형식으로 명확하게 테이블을 지정한다
select 
    (select count(*) from reply where board_idx = board.idx) as replyCount,
    board.*
    from board 
    order by idx desc;

select 
    idx,
    title,
    writer,
    (select count(*) from reply where board_idx = board.idx) as replyCount
        from board
        order by idx desc;
        
select 
    B.idx,
    B.title,
    B.writer,
    B.writeDate,
    count(R.idx) as replyCount
        from board B
        join reply R
            on B.idx = R.board_idx
        group by
            B.idx, B.title, B.writer, B.writeDate;
        
delete from board where idx = 10;
	</pre>
	</fieldset>
</details>











	
</body>
</html>