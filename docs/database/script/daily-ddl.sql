-- 기존 데이터베이스가 존재하면 삭제
DROP DATABASE IF EXISTS dailydb;

-- 데이터베이스 새로 생성
CREATE DATABASE dailydb
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

DROP USER 'moon'@'localhost';
DROP USER 'moon'@'%';
DROP USER 'moon'@'127.0.0.1';
DROP USER 'moon'@'::1';

-- 로컬에서만 접속할 수 있는 사용자를 만들기:
CREATE USER 'moon'@localhost IDENTIFIED BY '1111';
-- 원격에서만 접속할 수 있는 사용자를 만들기:
CREATE USER 'moon'@'%' IDENTIFIED BY '1111';

CREATE USER 'moon'@'127.0.0.1' IDENTIFIED BY '1111';
CREATE USER 'moon'@'::1' IDENTIFIED BY '1111';

-- 유저에게 데이터베이스 권한 부여
GRANT ALL ON dailydb.* TO moon@'localhost';
GRANT ALL ON dailydb.* TO moon@'%';
GRANT ALL ON dailydb.* TO moon@'127.0.0.1';
GRANT ALL ON dailydb.* TO moon@'::1';

-- 데이터베이스 접속
use dailydb;

-- 게시글
DROP TABLE IF EXISTS board;

-- 게시글
CREATE TABLE board (
    board_no INTEGER NOT NULL COMMENT '게시글 번호', -- 게시글 번호
    title VARCHAR(255) NULL COMMENT '제목', -- 제목
    view_count INTEGER NOT NULL COMMENT '조회수', -- 조회수
    content VARCHAR(255) NULL COMMENT '내용', -- 내용
    posting_registration TIMESTAMP DEFAULT NOW() COMMENT '등록일', -- 등록일
    start_dated          DATETIME     NOT NULL COMMENT '시작일', -- 시작일
  end_dated            DATETIME     NOT NULL COMMENT '마감일' -- 마감일
);

-- 게시글
ALTER TABLE board
  ADD CONSTRAINT PK_board -- 게시글 기본키
  PRIMARY KEY (
    board_no -- 게시글 번호
  );
  
ALTER TABLE board
MODIFY COLUMN board_no INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글 번호';

-- 게시글사진파일
CREATE TABLE board_photo (
  board_photo_no INTEGER      NOT NULL COMMENT '게시글사진파일번호', -- 게시글사진파일번호
  board_no      INTEGER      NOT NULL COMMENT '게시글번호', -- 게시글번호
  file_path           VARCHAR(255) NOT NULL COMMENT '파일경로' -- 파일경로
)
COMMENT '게시글사진파일';

-- 게시글사진파일
ALTER TABLE board_photo
  ADD CONSTRAINT PK_board_photo -- 게시글사진파일 기본키
    PRIMARY KEY (
      board_photo_no -- 게시글사진파일번호
    );

-- 게시글사진파일 유니크 인덱스
CREATE UNIQUE INDEX UIX_board_photo
  ON board_photo ( -- 게시글사진파일
    board_no ASC, -- 게시글번호
    file_path ASC       -- 파일경로
  );

ALTER TABLE board_photo
  MODIFY COLUMN board_photo_no INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글사진파일번호';
  
 -- 회원
CREATE TABLE members (
  member_no      INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  type           INTEGER      NOT NULL COMMENT '회원유형', -- 회원유형
  id             VARCHAR(40)  NOT NULL COMMENT '아이디', -- 아이디
  pwd            VARCHAR(255) NOT NULL COMMENT '비밀번호', -- 비밀번호
  name           VARCHAR(30)  NOT NULL COMMENT '이름', -- 이름
  email          VARCHAR(50)  NOT NULL COMMENT '이메일', -- 이메일
  tel            VARCHAR(20)  NULL 	   COMMENT '연락처' -- 연락처
)
COMMENT '회원';

-- 회원
ALTER TABLE members
  ADD CONSTRAINT PK_members -- 회원 기본키
    PRIMARY KEY (
      member_no -- 회원번호
    );

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_members
  ON members ( -- 회원
    id ASC,    -- 아이디
    email ASC  -- 이메일
  );

ALTER TABLE members
  MODIFY COLUMN member_no INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';
  
-- 일반회원
CREATE TABLE general_member (
  general_member_no INTEGER      NOT NULL COMMENT '일반회원번호' -- 일반회원번호
)
COMMENT '일반회원';

-- 일반회원
ALTER TABLE general_member
  ADD CONSTRAINT PK_general_member -- 일반회원 기본키
    PRIMARY KEY (
      general_member_no -- 일반회원번호
    );
 
 ALTER TABLE general_member
  MODIFY COLUMN general_member_no INTEGER NOT NULL AUTO_INCREMENT COMMENT '일반회원번호';   
  
-- 공지사항
CREATE TABLE notice (
  board_no  INTEGER NOT NULL COMMENT '게시글번호', -- 게시글번호
  category_no INTEGER NULL     COMMENT '공지사항분류번호' -- 공지사항분류번호
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE notice
  ADD CONSTRAINT pf_notice -- 공지사항 기본키
    PRIMARY KEY (
      board_no -- 게시글번호
    );  
    
-- 공지사항분류
CREATE TABLE notice_category (
  category_no INTEGER      NOT NULL COMMENT '공지사항분류번호', -- 공지사항분류번호
  name      VARCHAR(255) NOT NULL COMMENT '분류명' -- 분류명
)
COMMENT '공지사항분류';

-- 공지사항분류
ALTER TABLE notice_category
  ADD CONSTRAINT PK_notice_category -- 공지사항분류 기본키
    PRIMARY KEY (
      category_no -- 공지사항분류번호
    );    