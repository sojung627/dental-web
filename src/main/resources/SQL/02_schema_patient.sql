
-- 1. 환자 테이블
CREATE TABLE patient (
	pt_idx	  BIGSERIAL 	PRIMARY KEY,	-- 환자 번호 (PK)
	
	pt_name	  VARCHAR(50)	NOT NULL,		-- 환자 성함				
	pt_tel 	  VARCHAR(50),					-- 환자 연락처
	
	pt_bday		DATE,			-- 환자 생년월일
	pt_rrn 		VARCHAR(20),	-- 주민등록번호 (암호화)
	pt_regdate  DATE	DEFAULT CURRENT_DATE,	-- 환자 첫 방문일자
	
	pt_zipcode			VARCHAR(100),	 -- 환자 우편번호
	pt_addr				VARCHAR(100),	 -- 환자 주소
	pt_addr_detail		VARCHAR(100),	 -- 환자 상세 주소


	pt_gender	CHAR(1) 	-- 환자 성별 ( 남 / 여 )
		CHECK (pt_gender IN ('M', 'F'))										
	
);	


