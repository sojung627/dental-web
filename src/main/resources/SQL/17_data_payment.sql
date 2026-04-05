-- 1. 결제
-- 1. 김유아 환자 (chart_idx: 1, 총액: 50,000원) - 검진 (100% 면제 가정 시)
INSERT INTO payment (
    chart_idx, 
    pt_idx, 
    pay_total_amount, 
    pay_patient_amount, 
    pay_ins_amount, 
    pay_date, 
    pay_method, 
    pay_status
) VALUES (
    1, 
    1, 
    50000, 
    0, 
    50000, 
    CURRENT_TIMESTAMP, 
    'CASH', 
    'PAID'
);


-- 2. 김학생 환자 (chart_idx: 2, 총액: 60,000원) - 스케일링 (30% 본인부담)
INSERT INTO payment (
    chart_idx, 
    pt_idx, 
    pay_total_amount, 
    pay_patient_amount, 
    pay_ins_amount, 
    pay_date, 
    pay_method, 
    pay_status
) VALUES (
    2, 
    3, 
    60000, 
    18000, 
    42000, 
    CURRENT_TIMESTAMP, 
    'CARD', 
    'PAID'
);



-- 3. 이학생 환자 (chart_idx: 3, 총액: 300,000원) - 충치치료
INSERT INTO payment (
    chart_idx, 
    pt_idx, 
    pay_total_amount, 
    pay_patient_amount, 
    pay_ins_amount, 
    pay_date, 
    pay_method, 
    pay_status
) VALUES (
    3, 
    4, 
    300000, 
    90000, 
    210000, 
    CURRENT_TIMESTAMP, 
    'CARD', 
    'PAID'
);


-- 4. 김성인 환자 (chart_idx: 4, 총액: 80,000원) - 발치
INSERT INTO payment (
    chart_idx, 
    pt_idx, 
    pay_total_amount, 
    pay_patient_amount, 
    pay_ins_amount, 
    pay_date, 
    pay_method, 
    pay_status
) VALUES (
    4, 
    5, 
    80000, 
    24000, 
    56000, 
    CURRENT_TIMESTAMP, 
    'TRANSFER', 
    'PAID'
);


-- 5. 김노인 환자 (chart_idx: 5, 총액: 150,000원) - 신경치료
INSERT INTO payment (
    chart_idx, 
    pt_idx, 
    pay_total_amount, 
    pay_patient_amount, 
    pay_ins_amount, 
    pay_date, 
    pay_method, 
    pay_status
) VALUES (
    5, 
    7, 
    150000, 
    45000, 
    105000, 
    CURRENT_TIMESTAMP, 
    'CARD', 
    'PAID'
);