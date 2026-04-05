-- 1. 보험
CREATE TABLE insurance (
    ins_idx        BIGSERIAL       PRIMARY KEY,      -- 보험 항목 번호 (PK)
    
    ins_code       VARCHAR(20)     UNIQUE NOT NULL,  -- 상병코드 또는 보험코드
    ins_name       VARCHAR(100)    NOT NULL,         -- 보험 항목명 
    ins_coverage   INTEGER         DEFAULT 70,       -- 보험 급여 비율 
    ins_memo       VARCHAR(500)                      -- 참고사항

);
