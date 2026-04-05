-- 1. 보험
-- 1. 치은염 및 치주질환 (스케일링 관련)
INSERT INTO insurance (
    ins_code, 
    ins_name, 
    ins_coverage, 
    ins_memo
) VALUES (
    'K05', 
    'Gingivitis and periodontal diseases', 
    70, 
    '치은염 및 치주질환 관련 급여 항목'
);


-- 2. 치아 우식 (충치 치료 관련)
INSERT INTO insurance (
    ins_code, 
    ins_name, 
    ins_coverage, 
    ins_memo
) VALUES (
    'K02', 
    'Dental caries', 
    70, 
    '치아우식증(충치) 치료 관련 급여 항목'
);


-- 3. 치수 및 치근단 주위 조직의 질환 (신경치료 관련)
INSERT INTO insurance (
    ins_code, 
    ins_name, 
    ins_coverage, 
    ins_memo
) VALUES (
    'K04', 
    'Diseases of pulp and periapical tissues', 
    70, 
    '치수염 및 신경치료 관련 급여 항목'
);


-- 4. 매복치 및 발치 관련
INSERT INTO insurance (
    ins_code, 
    ins_name, 
    ins_coverage, 
    ins_memo
) VALUES (
    'K01', 
    'Embedded and impacted teeth', 
    70, 
    '매복치 및 지치 발치 관련 급여 항목'
);


-- 5. 구강 검진 (일반 검진)
INSERT INTO insurance (
    ins_code, 
    ins_name, 
    ins_coverage, 
    ins_memo
) VALUES (
    'A10', 
    'Oral Health Examination', 
    100, 
    '공단 건강검진 등 본인부담금 면제 항목'
);