-- 다른 테이블 다 succeed 한 뒤 하렴ㅎㅎ
-- chart_idx 땜에 순서 다르게 해야함 -> pk라서 쟤 있는 table 없으면 success 못함ㅎㅎ

-- 1. 진료 테이블
CREATE TABLE treatment (
    treat_idx       BIGSERIAL       PRIMARY KEY,        -- 진료 번호 (PK)
    chart_idx       BIGINT          NOT NULL,           -- 차트 번호 (FK)
    pt_idx          BIGINT          NOT NULL,           -- 환자 번호 (FK)
    
    treat_cost      INTEGER         DEFAULT 0,          -- 진료 단가
    treat_count     INTEGER         DEFAULT 1,          -- 수량 (치아 몇 개 했는지)
    treat_total     INTEGER,                            -- 총액 (단가 * 수량)
    treat_regdate   TIMESTAMP       DEFAULT CURRENT_TIMESTAMP, -- 기록 날짜
    
    treat_item_name VARCHAR(100)    NOT NULL,           -- 진료 항목    ex)  ext, sc ... 
    

    CONSTRAINT fk_treat_chart  -- 차트 번호 (FK)
        FOREIGN KEY (chart_idx) 
        REFERENCES dental_chart(chart_idx),
    
    CONSTRAINT fk_treat_pt    -- 환자 번호 (FK)
        FOREIGN KEY (pt_idx)    
        REFERENCES patient(pt_idx)
        
);