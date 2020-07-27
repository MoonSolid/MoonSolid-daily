-- 게시글 샘플 데이터(board)
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(1,"제목1",1,"내용1",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(2,"제목2",1,"내용2",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(3,"제목3",1,"내용3",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(4,"제목4",1,"내용4",NOW(),'2020-1-1','2020-2-2');
INSERT INTO board(board_no,title,view_count,content,posting_registration,start_dated,end_dated) VALUES(5,"제목5",1,"내용5",NOW(),'2020-1-1','2020-2-2');

-- board_photo 게시글사진파일 데이터  (board 인서트 후)
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(1,1,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(2,2,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(3,3,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(4,4,'/file/path'); 
INSERT INTO board_photo(board_photo_no,board_no,file_path) VALUES(5,5,'/file/path');