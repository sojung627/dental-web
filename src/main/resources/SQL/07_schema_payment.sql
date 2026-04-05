-- 1. 결제
CREATE TABLE payment (
	pay_idx 	BIGSERIAL 	PRIMARY KEY,  -- 결제 번호 (PK)
	chart_idx   BIGINT      NOT NULL,     -- 어떤 진료에 대한 결제인가 (FK)
    pt_idx      BIGINT      NOT NULL,     -- 어떤 환자가 내는가 (FK)
    
    pay_total_amount 	INTEGER     NOT NULL,       			-- 총 진료비 (보험 + 본인부담금)
    pay_patient_amount 	INTEGER     NOT NULL,       			-- 실제 환자가 낸 돈(본인부담금 )
    pay_ins_amount  	INTEGER     DEFAULT 0,      			-- 보험 공단 청구액
    pay_date       		TIMESTAMP   DEFAULT CURRENT_TIMESTAMP, 	-- 결제 일시
    
    
    pay_method     VARCHAR(20)       -- 결제 수단 ( 현금 / 카드 / 둘다 )
        CHECK (pay_method IN ('CASH', 'CARD', 'TRANSFER') ),
        
    pay_status     VARCHAR(20)       -- 결제 상태 ( 결제완료 / 결제안함 / 환불해줌 )
        CHECK (pay_status IN ('PAID', 'UNPAID', 'REFUND') ),
        
    
    CONSTRAINT fk_pay_chart 	-- 차트 번호
    	FOREIGN KEY (chart_idx) 
    	REFERENCES dental_chart(chart_idx),
    
    CONSTRAINT fk_pay_pt    	-- 환자 번호
    	FOREIGN KEY (pt_idx)    
    	REFERENCES patient(pt_idx)
	

);
