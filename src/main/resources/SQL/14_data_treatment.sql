-- 1. 진료
-- 1. 김유아 환자 (pt_idx: 1) - 검진 및 불소 도포
INSERT INTO treatment (
    chart_idx, 
    pt_idx, 
    treat_cost, 
    treat_count, 
    treat_total, 
    treat_regdate, 
    treat_item_name
) 
VALUES (
    1, 
    1, 
    50000, 
    1, 
    50000, 
    CURRENT_TIMESTAMP, 
    'Oral Examination'
);


-- 2. 김학생 환자 (pt_idx: 3) - 스케일링
INSERT INTO treatment (
    chart_idx, 
    pt_idx, 
    treat_cost, 
    treat_count, 
    treat_total, 
    treat_regdate, 
    treat_item_name
) 
VALUES (
    2, 
    3, 
    60000, 
    1, 
    60000, 
    CURRENT_TIMESTAMP, 
    'Scaling'
);


-- 3. 이학생 환자 (pt_idx: 4) - 레진 충치 치료 (3개)
INSERT INTO treatment (
    chart_idx, 
    pt_idx, 
    treat_cost, 
    treat_count, 
    treat_total, 
    treat_regdate, 
    treat_item_name
) 
VALUES (
    3, 
    4, 
    100000, 
    3, 
    300000, 
    CURRENT_TIMESTAMP, 
    'Resin Filling'
);


-- 4. 김성인 환자 (pt_idx: 5) - 발치
INSERT INTO treatment (
    chart_idx, 
    pt_idx, 
    treat_cost, 
    treat_count, 
    treat_total, 
    treat_regdate, 
    treat_item_name
) VALUES (
    4, 
    5, 
    80000, 
    1, 
    80000, 
    CURRENT_TIMESTAMP, 
    'Extraction'
);


-- 5. 김노인 환자 (pt_idx: 7) - 신경치료
INSERT INTO treatment (
    chart_idx, 
    pt_idx, 
    treat_cost, 
    treat_count, 
    treat_total, 
    treat_regdate, 
    treat_item_name
) VALUES (
    5, 
    7, 
    150000, 
    1, 
    150000, 
    CURRENT_TIMESTAMP, 
    'Root Canal Therapy'
);