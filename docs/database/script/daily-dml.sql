-- 게시글 샘플 데이터(board)
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(1,"제목1",1,"내용1",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(2,"제목2",1,"내용2",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(3,"제목3",1,"내용3",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(4,"제목4",1,"내용4",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(5,"제목5",1,"내용5",NOW(),'2020-1-1','2020-2-2');

-- board_photo 게시글사진파일 샘플 데이터  (board 인서트 후)
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(1,1,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(2,2,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(3,3,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(4,4,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(5,5,'/file/path');

INSERT INTO members(member_no, id, pwd, name, email, tel, type) VALUES (1, 'moonsolid', PASSWORD('1111'), '문국대', 'moonsolid11@gmail.com', '010-1234-5675', 1);
INSERT INTO members(id, pwd, name, email, tel, type) VALUES ('rnreo10', PASSWORD('2222'), '로그인봇1', 'moonsolid22@naver.com', '010-1234-5676', 1);
INSERT INTO members(id, pwd, name, email, tel, type) VALUES ('rnreo20', PASSWORD('2222'), '로그인봇2', 'moonsolid33@naver.com', '010-9876-5437', 1);
INSERT INTO members(id, pwd, name, email, tel, type) VALUES ('rnreo30', PASSWORD('2222'), '로그인봇3', 'moonsolid44@naver.com', '010-9876-5438', 1);
INSERT INTO members(id, pwd, name, email, tel, type) VALUES ('rnreo40', PASSWORD('2222'), '로그인봇4', 'moonsolid55@naver.com', '010-9876-5439', 1);

-- 일반회원 샘플 데이터
INSERT INTO general_member(general_member_no) VALUES (1);
INSERT INTO general_member(general_member_no) VALUES (2);
INSERT INTO general_member(general_member_no) VALUES (3);
INSERT INTO general_member(general_member_no) VALUES (4);
INSERT INTO general_member(general_member_no) VALUES (5);

-- 공지사항분류 샘플데이터 (notice_category)
INSERT INTO notice_category (category_no, name) VALUES(0, "기타");
INSERT INTO notice_category (category_no, name) VALUES(1, "로그인관련");
INSERT INTO notice_category (category_no, name) VALUES(2, "상품관련");
INSERT INTO notice_category (category_no, name) VALUES(3, "결제관련");
INSERT INTO notice_category (category_no, name) VALUES(4, "배송관련");

-- 공지사항 샘플데이터 (notice)
INSERT INTO notice (board_no, category_no) VALUES(1,1);
INSERT INTO notice (board_no, category_no) VALUES(2,2);
INSERT INTO notice (board_no, category_no) VALUES(3,3);
INSERT INTO notice (board_no, category_no) VALUES(4,4);
INSERT INTO notice (board_no, category_no) VALUES(5,1);
