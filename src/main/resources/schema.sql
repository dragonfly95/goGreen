
-- DROP TABLE member;

CREATE TABLE member (
   M_ID   VARCHAR2(200)   NOT NULL,
   M_PWD   VARCHAR2(200)   NOT NULL,
   M_NAME    VARCHAR2(200)   NOT NULL,
   M_BIRTHDAY   NUMBER   NOT NULL,
   M_EMAIL   VARCHAR2(200)   NOT NULL,
   M_PHONE   VARCHAR2(200)   NULL,
   M_ENROLLDATE   DATE   NOT NULL,
   M_NO   NUMBER   NOT NULL,
   M_STATUS   VARCHAR2(5)   DEFAULT 'N'   NOT NULL
);

COMMENT ON COLUMN member.M_ID IS '아이디';

COMMENT ON COLUMN member.M_PWD IS '비밀번호';

COMMENT ON COLUMN member.M_NAME IS '이름';

COMMENT ON COLUMN member.M_BIRTHDAY IS '생년월일';

COMMENT ON COLUMN member.M_EMAIL IS '이메일';

COMMENT ON COLUMN member.M_PHONE IS '폰번호';

COMMENT ON COLUMN member.M_ENROLLDATE IS '가입날짜';

COMMENT ON COLUMN member.M_NO IS '회원번호';

COMMENT ON COLUMN member.M_STATUS IS '회원탈퇴여부(Y-탈퇴, N-가입)';

-- DROP TABLE campreview;

CREATE TABLE campreview (
   "RV_NO"   NUMBER      NOT NULL,
   "RES_NO"   NUMBER      NOT NULL,
   "M_ID"   VARCHAR2(200)      NOT NULL,
   "RV_CONTENT"   VARCHAR2(4000)      NULL,
   "RV_DATE"   DATE      NOT NULL,
   "COMMENT_STAR"   NUMBER      NULL,
   "CAMPNO"   NUMBER      NOT NULL
);

COMMENT ON COLUMN campreview.RV_NO IS '후기고유번호';

COMMENT ON COLUMN campreview.RES_NO IS '주문고유번호';

COMMENT ON COLUMN campreview.M_ID IS '아이디';

COMMENT ON COLUMN campreview.RV_CONTENT IS '후기내용';

COMMENT ON COLUMN campreview.RV_DATE IS '후기날짜';

COMMENT ON COLUMN campreview.CAMPNO IS '관리번호';

-- DROP TABLE board;

CREATE TABLE board (
   "B_NO"   NUMBER      NOT NULL,
   "M_ID"   VARCHAR2(200)      NOT NULL,
   "B_TITLE"   VARCHAR2(500)      NOT NULL,
   "B_DETAIL"   VARCHAR2(4000)      NOT NULL,
   "B_VIEWCNT"   NUMBER   DEFAULT 0   NOT NULL,
   "B_LIKECNT"   NUMBER   DEFAULT 0   NOT NULL,
   "B_DATE"   DATE      NOT NULL,
   "B_TYPE"   VARCHAR2(100)      NOT NULL
);

COMMENT ON COLUMN board.B_NO IS '글번호';

COMMENT ON COLUMN board.B_TITLE IS '제목';

COMMENT ON COLUMN board.B_DETAIL IS '내용';

COMMENT ON COLUMN board.B_VIEWCNT IS '조회수';

COMMENT ON COLUMN board.B_LIKECNT IS '추천수';

COMMENT ON COLUMN board.B_DATE IS '작성시간';

COMMENT ON COLUMN board.B_TYPE IS '커뮤니티종류(자유, 가이드, 용품, 레시피)';

-- DROP TABLE usedboard;

CREATE TABLE usedboard (
   USED_NO   NUMBER   NOT NULL,
   M_ID   VARCHAR2(200)   NOT NULL,
   USED_TITLE   VARCHAR2(500)   NOT NULL,
   USED_WRITER   VARCHAR2(500)   NULL,
   USED_CONTENT   VARCHAR2(2000)   NULL,
   USED_ORIGINAL_FILENAME   VARCHAR2(500),
   USED_RENAME_FILENAME   VARCHAR2(500),
   USED_COUNT   NUMBER   NULL,
   USED_CREATE_DATE   DATE   NULL,
   USED_STATUS   VARCHAR2(50)   NULL,
   USED_YN   VARCHAR2(20)   NOT NULL,
   USED_PRICE   NUMBER   NOT NULL
);

COMMENT ON COLUMN usedboard.USED_NO IS '글번호';

COMMENT ON COLUMN usedboard.M_ID IS '아이디';

COMMENT ON COLUMN usedboard.USED_TITLE IS '제목';

COMMENT ON COLUMN usedboard.USED_WRITER IS '작성자';

COMMENT ON COLUMN usedboard.USED_CONTENT IS '상세설명';

COMMENT ON COLUMN usedboard.USED_ORIGINAL_FILENAME IS '파일이름';

COMMENT ON COLUMN usedboard.USED_RENAME_FILENAME IS '수정파일이름';

COMMENT ON COLUMN usedboard.USED_COUNT IS '조회수';

COMMENT ON COLUMN usedboard.USED_CREATE_DATE IS '작성날짜시간';

COMMENT ON COLUMN usedboard.USED_STATUS IS '회원탈퇴여부';

COMMENT ON COLUMN usedboard.USED_YN IS '판매완료여부(Y-판매완료,N-판매중)';

COMMENT ON COLUMN usedboard.USED_PRICE IS '가격';



-- DROP TABLE reservation;

CREATE TABLE reservation (
   "RES_NO"   NUMBER      NOT NULL,
   "CAMPNO"   NUMBER      NOT NULL,
   "M_ID"   VARCHAR2(200)      NOT NULL,
   "RES_YN"   VARCHAR2(20)   DEFAULT 'N'   NOT NULL,
   "RES_DATE"   DATE      NULL
);

COMMENT ON COLUMN reservation.RES_NO IS '주문고유번호';

COMMENT ON COLUMN reservation.CAMPNO IS '관리번호';

COMMENT ON COLUMN reservation.M_ID IS '아이디';

COMMENT ON COLUMN reservation.RES_YN IS '구매여부(Y-구매,N-비구매)';

COMMENT ON COLUMN reservation.RES_DATE IS '예약날짜';

-- DROP TABLE mycamp;

CREATE TABLE mycamp (
   "MYC_NO"   NUMBER      NOT NULL,
   "MYC_TITLE"   VARCHAR2(500)      NOT NULL,
   "MYC_DETAIL"   VARCHAR2(4000)      NOT NULL,
   "MYC_TAG"   VARCHAR(1000)      NULL,
   "MYC_WRITERDATE"   DATE      NOT NULL,
   "MYC_MODIFYDATE"   DATE      NULL,
   "MYC_VIEWCNT"   NUMBER   DEFAULT 0   NOT NULL,
   "MYC_LIKECNT"   NUMBER   DEFAULT 0   NOT NULL,
   "COMMENTSTAR"   NUMBER      NULL,
   "MYC_STATUS"   VARCHAR2(1)      NULL,
   "M_ID"   VARCHAR2(200)      NOT NULL
);

COMMENT ON COLUMN mycamp.MYC_NO IS '글번호';

COMMENT ON COLUMN mycamp.MYC_TITLE IS '제목';

COMMENT ON COLUMN mycamp.MYC_DETAIL IS '상세설명';

COMMENT ON COLUMN mycamp.MYC_WRITERDATE IS '등록일';

COMMENT ON COLUMN mycamp.MYC_VIEWCNT IS '조회수';

COMMENT ON COLUMN mycamp.MYC_LIKECNT IS '추천수';

-- DROP TABLE boardcomment;

CREATE TABLE boardcomment (
   "COMMNET_NO"   NUMBER      NULL,
   "B_NO"   NUMBER      NOT NULL,
   "REFBOARD_NO"   NUMBER      NOT NULL,
   "COMMENT"   VARCHAR2(4000)      NULL,
   "COMMENT_DATE"   DATE      NULL
);

COMMENT ON COLUMN boardcomment.COMMNET_NO IS '댓글 번호';

COMMENT ON COLUMN boardcomment.B_NO IS '글번호';

COMMENT ON COLUMN boardcomment.REFBOARD_NO IS '참조게시글번호';

--COMMENT ON COLUMN boardcomment.COMMENT IS '내용';

COMMENT ON COLUMN boardcomment.COMMENT_DATE IS '작성시간';

-- DROP TABLE chat;

CREATE TABLE chat (
   "Key"   VARCHAR(255)      NOT NULL,
   "sender"   VARCHAR2(200)      NOT NULL,
   "receiver"   VARCHAR2(200)      NOT NULL,
   "chatTitle"   VARCHAR2(500)      NOT NULL,
   "chatContent"   VARCHAR2(4000)      NULL,
   "firstChatDate"   DATE      NOT NULL,
   "chatDate"   DATE      NULL
);

--COMMENT ON COLUMN chat.sender IS '보낸사람';
--
--COMMENT ON COLUMN chat.receiver IS '받은사람';
--
--COMMENT ON COLUMN chat.chatTitle IS '쪽지제목';
--
--COMMENT ON COLUMN chat.chatContent IS '쪽지내용';
--
--COMMENT ON COLUMN chat.chatDate IS '받은날짜';

-- DROP TABLE usedcomment;

CREATE TABLE usedcomment (
   "COMMENT_NO"   NUMBER   NOT NULL,
   "USED_NO"   NUMBER   NOT NULL,
   "USED_R_ID"   VARCHAR2(200)   NULL,
   "USED_R_CONTENT"   VARCHAR2(2000)   NULL,
   "USED_REF_ID"   NUMBER   NULL,
   "USED_R_WRITER"   VARCHAR2(200)   NULL,
   "USED_R_CREATEDATE"   DATE   NULL
);
COMMENT ON COLUMN usedcomment.COMMENT_NO IS '댓글 번호';

COMMENT ON COLUMN usedcomment.USED_NO IS '글 번호';

COMMENT ON COLUMN usedcomment.USED_R_ID IS '댓글 아이디';

COMMENT ON COLUMN usedcomment.USED_R_CONTENT IS '댓글 내용';

COMMENT ON COLUMN usedcomment.USED_REF_ID IS '게시글 번호';

COMMENT ON COLUMN usedcomment.USED_R_WRITER IS '작성자';

COMMENT ON COLUMN usedcomment.USED_R_CREATEDATE IS '작성일';

-- DROP TABLE mycampcomment;

CREATE TABLE mycampcomment (
   "COMMENT_NO"   NUMBER      NOT NULL,
   "MYC_NO"   NUMBER      NOT NULL,
   "COMMENT"   VARCHAR2(4000)      NOT NULL,
   "COMMENT_WRITEDATE"   DATE      NOT NULL,
   "COMMENT_MODIFYDATE"   DATE      NULL
);

COMMENT ON COLUMN mycampcomment.COMMENT_NO IS '댓글 번호';

COMMENT ON COLUMN mycampcomment.MYC_NO IS '글번호';

--COMMENT ON COLUMN mycampcomment.COMMENT IS '내용';

COMMENT ON COLUMN mycampcomment.COMMENT_WRITEDATE IS '작성시간';

-- DROP TABLE files;

CREATE TABLE files (
   "FILE_NO"   NUMBER      NOT NULL,
   "FILE_CONTENTNO"   NUMBER      NOT NULL,
   "FILE_BOARDTYPE"   VARCHAR2(100)      NOT NULL,
   "FILE_ORIGINNAME"   VARCHAR2(500)      NOT NULL,
   "FILE_NEWNAME"   VARCHAR2(500)      NOT NULL,
   "FILE_PATH"   VARCHAR2(500)      NOT NULL
);

COMMENT ON COLUMN files.FILE_NO IS '파일번호';

COMMENT ON COLUMN files.FILE_CONTENTNO IS '글등록번호';

COMMENT ON COLUMN files.FILE_BOARDTYPE IS '게시판종류(용품,레시피,가이드,자유, 중고거래, 나만의 캠핑)';

COMMENT ON COLUMN files.FILE_ORIGINNAME IS '원래파일명';

COMMENT ON COLUMN files.FILE_PATH IS '파일경로';

-- DROP TABLE camping;

CREATE TABLE camping (
   "CAMP_NO"   NUMBER      NOT NULL,
   "CAMP_IMG"   VARCHAR2(500)      NULL,
   "campgNm"   VARCHAR2(500)      NOT NULL,
   "campgSe"   VARCHAR2(100)      NULL,
   "rdnmadr"   VARCHAR2(1000)      NULL,
   "officePhoneNumber"   VARCHAR2(200)      NULL,
   "prkplceCo"   NUMBER      NULL,
   "cvntl"   VARCHAR2(500)      NULL,
   "safentl"   VARCHAR2(500)      NULL,
   "etcty"   VARCHAR2(500)      NULL,
   "useTime"   VARCHAR2(500)      NULL,
   "useCharge"   VARCHAR2(500)      NULL,
   "phoneNumber"   VARCHAR2(500)      NULL,
   "latitude"   NUMBER      NULL,
   "longitude"   NUMBER      NULL,
   "localSeNm"   VARCHAR2(500)      NULL,
   "environmentNm"   VARCHAR2(500)      NULL,
   "totalRooms"   NUMBER      NULL
);

COMMENT ON COLUMN camping.CAMP_NO IS '관리번호';

ALTER TABLE member ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
   "M_ID"
);

ALTER TABLE campreview ADD CONSTRAINT "PK_CAMPREVIEW" PRIMARY KEY (
   "RV_NO"
);

ALTER TABLE board ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
   "B_NO"
);

ALTER TABLE usedboard ADD CONSTRAINT "PK_USEDBOARD" PRIMARY KEY (
   "USED_NO"
);

ALTER TABLE reservation ADD CONSTRAINT "PK_RESERVATION" PRIMARY KEY (
   "RES_NO",
   "CAMPNO"
);

ALTER TABLE mycamp ADD CONSTRAINT "PK_MYCAMP" PRIMARY KEY (
   "MYC_NO"
);

ALTER TABLE boardcomment ADD CONSTRAINT "PK_BOARDCOMMENT" PRIMARY KEY (
   "COMMNET_NO",
   "B_NO"
);

ALTER TABLE chat ADD CONSTRAINT "PK_CHAT" PRIMARY KEY (
   "Key"
);

ALTER TABLE usedcomment ADD CONSTRAINT "PK_USEDCOMMENT" PRIMARY KEY (
   "COMMENT_NO",
   "USED_NO"
);

ALTER TABLE mycampcomment ADD CONSTRAINT "PK_MYCAMPCOMMENT" PRIMARY KEY (
   "COMMENT_NO",
   "MYC_NO"
);

ALTER TABLE files ADD CONSTRAINT "PK_FILE" PRIMARY KEY (
   "FILE_NO"
);

ALTER TABLE camping ADD CONSTRAINT "PK_CAMPING" PRIMARY KEY (
   "CAMP_NO"
);

ALTER TABLE reservation ADD CONSTRAINT "FK_camping_TO_reservation_1" FOREIGN KEY (
   "CAMP_NO"
)
REFERENCES camping (
   "CAMP_NO"
);

ALTER TABLE boardcomment ADD CONSTRAINT "FK_board_TO_boardcomment_1" FOREIGN KEY (
   "B_NO"
)
REFERENCES board (
   "B_NO"
);

ALTER TABLE usedcomment ADD CONSTRAINT "FK_usedboard_TO_usedcomment_1" FOREIGN KEY (
   "USED_NO"
)
REFERENCES usedboard (
   "USED_NO"
);

ALTER TABLE mycampcomment ADD CONSTRAINT "FK_mycamp_TO_mycampcomment_1" FOREIGN KEY (
   "MYC_NO"
)
REFERENCES mycamp (
   "MYC_NO"
);
ALTER TABLE usedboard ADD CONSTRAINT "FK_member_TO_usedboard_1" FOREIGN KEY (
   "M_ID"
)
REFERENCES member (
   "M_ID"
);
----------------------------------------------------------------------------------------------------------------테이블생성끝---------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------시퀀스 생성--------------------------------------
DROP SEQUENCE SEQ_MEMBER_NO;
DROP SEQUENCE SEQ_CAMP_NO;
DROP SEQUENCE SEQ_BOARD_NO;
DROP SEQUENCE SEQ_RESERVATION_NO;
DROP SEQUENCE SEQ_CAMPREVIEW_NO;
DROP SEQUENCE SEQ_MYC_NO;
DROP SEQUENCE SEQ_MYC_COM_NO;
DROP SEQUENCE SEQ_USED_NO;
DROP SEQUENCE SEQ_USEDCOMMENT_NO;
DROP SEQUENCE SEQ_FILE_NO;
DROP SEQUENCE SEQ_BOADCOM_NO;



CREATE SEQUENCE SEQ_MEMBER_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_CAMP_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_BOARD_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_RESERVATION_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_CAMPREVIEW_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_MYC_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE  SEQ_MYC_COM_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_BOADCOM_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_USED_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_USEDCOMMENT_NO START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SEQ_FILE_NO START WITH 1 INCREMENT BY 1;

