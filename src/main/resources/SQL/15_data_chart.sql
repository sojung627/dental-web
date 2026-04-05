-- 1. 차트
-- 1. 김유아 환자 (pt_idx: 1, app_idx: 1) - 검진 차트
INSERT INTO dental_chart (
    app_idx, 
    pt_idx, 
    emp_idx, 
    chart_cc, 
    chart_dx, 
    chart_tx, 
    chart_tooth_no, 
    chart_regdate
) VALUES (
    1,
    1, 
    1, 
    '정기 검진 및 불소 도포 위해 내원', 
    '치아 전반적 상태 양호', '구강 검진 및 전악 불소 도포 시행', 
    '전악', 
    CURRENT_TIMESTAMP
);


-- 2. 김학생 환자 (pt_idx: 3, app_idx: 2) - 스케일링 차트
INSERT INTO dental_chart (
    app_idx, 
    pt_idx, 
    emp_idx, 
    chart_cc, 
    chart_dx, 
    chart_tx, 
    chart_tooth_no, 
    chart_regdate
) VALUES (
    2, 
    3, 
    2, 
    '잇몸에서 피가 나고 치석 제거 원함', '치은염 및 다량의 치석 확인', '전악 스케일링(Scaling) 시행', '전악', CURRENT_TIMESTAMP
);


-- 3. 이학생 환자 (pt_idx: 4, app_idx: 3) - 레진 충치 치료 차트
INSERT INTO dental_chart (
    app_idx, 
    pt_idx, 
    emp_idx, 
    chart_cc, 
    chart_dx, 
    chart_tx, 
    chart_tooth_no, 
    chart_regdate
) VALUES (
    3, 
    4, 
    1, 
    '어금니가 시리고 아파요', 
    '상악 우측 및 하악 좌측 구치부 치아 우식(충치)', 
    '광중합형 복합레진 충전', 
    '#16, #36, #37', 
    CURRENT_TIMESTAMP
);


-- 4. 김성인 환자 (pt_idx: 5, app_idx: 4) - 발치 차트
INSERT INTO dental_chart (
    app_idx, 
    pt_idx, 
    emp_idx, 
    chart_cc, 
    chart_dx, 
    chart_tx, 
    chart_tooth_no, 
    chart_regdate
) VALUES (
    4,
    5, 
    2, 
    '왼쪽 아래 사랑니 통증', 
    '하악 좌측 제3대구치(사랑니) 매복 및 염증', 
    '난발치 시행 및 소독', 
    '#38', 
    CURRENT_TIMESTAMP
);


-- 5. 김노인 환자 (pt_idx: 7, app_idx: 5) - 신경치료 차트
INSERT INTO dental_chart (
    app_idx, 
    pt_idx, 
    emp_idx, 
    chart_cc, 
    chart_dx, 
    chart_tx, 
    chart_tooth_no, 
    chart_regdate
) VALUES (
    5, 
    7, 
    1, 
    '음식 씹을 때 너무 아파서 못 씹겠음', 
    '치수염 진행으로 인한 통증', 
    '근관치료(신경치료) 1회차 시행', 
    '#46', 
    CURRENT_TIMESTAMP
);


-- ==================================================================================


-- 1. 김유아 환자 (pt_idx: 1, chart_idx: 1) - 검진 사진
INSERT INTO tooth_image_chart (
    pt_idx, 
    chart_idx, 
    img_path, 
    img_regdate, 
    img_category, 
    img_type
) VALUES (
    1, 
    1, 
    '/upload/chart/2026/pt1_photo.jpg', 
    CURRENT_TIMESTAMP, 
    'INTRA', 
    'PHOTO'
);


-- 2. 김학생 환자 (pt_idx: 3, chart_idx: 2) - 스케일링 전 파노라마
INSERT INTO tooth_image_chart (
    pt_idx, 
    chart_idx, 
    img_path, 
    img_regdate, 
    img_category, 
    img_type
) VALUES (
    3, 
    2, 
    '/upload/chart/2026/pt3_pano.jpg', 
    CURRENT_TIMESTAMP, 
    'EXTRA', 
    'PANORAMA'
);


-- 3. 이학생 환자 (pt_idx: 4, chart_idx: 3) - 충치 부위 CT
INSERT INTO tooth_image_chart (
    pt_idx, 
    chart_idx, 
    img_path, 
    img_regdate, 
    img_category, 
    img_type
) VALUES (
    4, 
    3, 
    '/upload/chart/2026/pt4_ct.jpg', 
    CURRENT_TIMESTAMP, 
    'EXTRA', 
    'CT'
);


-- 4. 김성인 환자 (pt_idx: 5, chart_idx: 4) - 발치 전 PA(치근단) 사진
INSERT INTO tooth_image_chart (
    pt_idx, 
    chart_idx, 
    img_path, 
    img_regdate, 
    img_category, 
    img_type
) VALUES (
    5, 
    4, 
    '/upload/chart/2026/pt5_pa.jpg', 
    CURRENT_TIMESTAMP, 
    'INTRA', 
    'PA'
);


-- ==================================================================================


-- 1. 김노인 환자 (pt_idx: 7) - 고혈압 및 당뇨 (치과 치료 시 주의 필요)
INSERT INTO patient_medical_info (
    pt_idx, 
    med_name, 
    med_memo
) VALUES (
    7, 
    '고혈압, 당뇨', 
    '아스피린 복용 중, 발치 시 지혈 주의 요망'
);


-- 2. 이학생 환자 (pt_idx: 4) - 알레르기
INSERT INTO patient_medical_info (
    pt_idx, 
    med_name, 
    med_memo
) VALUES (
    4, 
    '항생제 알레르기', 
    '페니실린 계열 처방 금지'
);


-- 3. 박노인 환자 (pt_idx: 8) - 골다공증
INSERT INTO patient_medical_info (
    pt_idx, 
    med_name,  
    med_memo
) VALUES (
    8, 
    '골다공증', 
    '골다공증 약(비스포스포네이트) 복용 중'
);