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
    content VARCHAR(255) NULL COMMENT '내용' -- 내용
);

-- 게시글
ALTER TABLE board
  ADD CONSTRAINT PK_board -- 게시글 기본키
  PRIMARY KEY (
    board_no -- 게시글 번호
  );
  
ALTER TABLE board
MODIFY COLUMN board_no INTEGER NOT NULL AUTO_INCREMENT COMMENT '게시글 번호';
 