CREATE TABLE appointment (
    app_idx     BIGSERIAL    PRIMARY KEY, -- 환자 예약 번호
    pt_idx      BIGINT       NOT NULL,    -- 환자 번호 (FK)
    emp_idx     BIGINT       NOT NULL,    -- 직원 번호 (FK)
    
    app_date    DATE         NOT NULL,    -- 예약 날짜
    app_time    VARCHAR(5)   NOT NULL,    -- 예약 시간 (09:00 형식)
    
    app_memo    VARCHAR(200),			  -- 예약 메모
    app_regdate DATE         DEFAULT CURRENT_DATE,   -- 예약 등록일
    
    app_type    VARCHAR(10)   -- 초진 / 재진 유무 (한달지나면 초진 ! )
        CHECK (app_type IN ('FIRST', 'REVISIT') ),
        
    app_status  VARCHAR(20)   -- 환자 예약 근황 ( 예약완료 / 예약취소 / 진료완료 / 예약 후 안옴 )
        CHECK (app_status IN ('RESERVED', 'CANCELLED', 'DONE', 'NOSHOW') ),
    
    CONSTRAINT fk_app_patient -- 환자 번호 (FK)
        FOREIGN KEY (pt_idx) REFERENCES patient (pt_idx),
        
    CONSTRAINT fk_app_employee -- 직원 번호 (FK)
        FOREIGN KEY (emp_idx) REFERENCES employee (emp_idx)
);