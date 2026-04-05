

-- New Oracle(0) (Oracle v. 0.2.0.1.0 - Production)


-- 1. 직원 테이블
-- BIGSERIAL을 적으면 시퀀스 자동 생성
-- TIMESTAMP DEFAULT CURRENT_TIMESTAMP == 오라클의 SYSDATE와 같음
CREATE TABLE employee (
    emp_idx     BIGSERIAL 		PRIMARY KEY,	-- 직원 번호 (PK)
    emp_name    VARCHAR(50) 	NOT NULL,		-- 직원 이름
    
    emp_img		VARCHAR(50)		NOT NULL,		-- 면허 사본 인증
    emp_no		VARCHAR(50)		NOT NULL,		-- 면허 번호
    
    emp_id   	VARCHAR(50) 	UNIQUE NOT NULL,	-- 아이디
    emp_pwd     VARCHAR(100) 	NOT NULL,			-- 비밀번호 (암호화)
    
    emp_tel        	  VARCHAR(50),		-- 직원 연락처
    emp_zipcode		  VARCHAR(100),		-- 직원 우편주소
    emp_addr          VARCHAR(100),		-- 직원 주소
    emp_addr_detail	  VARCHAR(100),		-- 직원 상세 주소
    emp_regdate   	  TIMESTAMP DEFAULT 	CURRENT_TIMESTAMP,	-- 직원 입사 날짜
        
        
    emp_role       	VARCHAR(20)     NOT NULL 				-- 직원 종류 ( 의사 / 위생사 / 직원 / 관리자 )
        CHECK (emp_role IN ('DOC', 'HY', 'ST', 'ADM') ),	-- 권한 나누기 !
        
    emp_position   VARCHAR(20)  							-- 의사 종류 ( 대표의사 / 일반의사 )
    	CHECK (emp_position IN ('DIRECTOR', 'REGULAR') ),
    	
    emp_status      VARCHAR(20) 							-- 직원 현 상태 ( 출근자 / 퇴사자 / 휴직자 )
        CHECK (emp_status IN ('ACTIVE', 'RESIGNED', 'SUSPENDED') )
);


