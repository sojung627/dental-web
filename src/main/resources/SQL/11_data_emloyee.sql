-- 1. 의사 (2명)
INSERT INTO employee (
	emp_idx,
    emp_name,
    emp_img,
    emp_no,
    emp_id,
    emp_pwd,
    emp_tel,
    emp_zipcode,
    emp_addr,
    emp_addr_detail,
    emp_regdate,
    emp_role,
    emp_position,
    emp_status
)
VALUES (
	1,
    '김원장',
    'license1.jpg',
    'DOC-2021-001',
    'doc1',
    'doc1',
    '010-1111-1111',
    '11111',
    '서울특별시 종로구 xx동',
    'tooth포레 101동 101호',
    DATE '2021-01-01',
    'DOC',
    'DIRECTOR',
    'ACTIVE'
);


INSERT INTO employee (
    emp_name,
    emp_img,
    emp_no,
    emp_id,
    emp_pwd,
    emp_tel,
    emp_zipcode,
    emp_addr,
    emp_addr_detail,
    emp_regdate,
    emp_role,
    emp_position,
    emp_status
)
VALUES (
    '이원장',
    'license2.jpg',
    'DOC-2022-002',
    'doc2',              
    'doc2',
    '010-2222-2222',
    '22222',
    '서울특별시 종로구 yy동',
    'tooth포레 101동 102호',
    DATE '2022-02-02',
    'DOC',
    'REGULAR',           
    'ACTIVE'
);


-- 2. 위생사 (5명)
INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	3,
	'김위생',
	'hy01.png',
	'HY-2021-001',
	'hy1',
	'hy1',
	'010-1111-1111',
	'11111',
	'서울특별시 종로구 xx동',
	'tooth포레 102동 304호',
	DATE '2024-02-02',
	'HY',
	NULL,
	'ACTIVE'
);


INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	4,
	'이위생',
	'hy02.png',
	'HY-2022-002',
	'hy2',
	'hy2',
	'010-1222-1222',
	'12222',
	'서울특별시 서초구 xx동',
	'dental파크뷰 202동 2204호',
	DATE '2025-04-13',
	'HY',
	NULL,
	'ACTIVE'
	
);


INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	5,
	'박위생',
	'hy03.png',
	'HY-2023-003',
	'hy3',
	'hy3',
	'010-1233-1233',
	'12333',
	'서울특별시 종로구 xx동',
	'tooth포레 102동 304호',
	DATE '2026-02-02',
	'HY',
	NULL,
	'ACTIVE'
	
);


INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	6,
	'최휴직',
	'hy04.png',
	'HY-2024-004',
	'hy4',
	'hy4',
	'010-1234-1234',
	'12344',
	'경기도 김포시 xx동',
	'tooth파크뷰 107동 402호',
	DATE '2025-02-02',
	'HY',	
	NULL,
	'SUSPENDED'
	
);


INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	7,
	'최퇴사',
	'hy05.png',
	'HY-2025-005',
	'hy5',
	'hy5',
	'010-1234-5555',
	'67890',
	'서울특별시 강남구 xx동',
	'tooth리더스뷰 107동 1302호',
	DATE '2024-02-02',
	'HY',	
	NULL,
	'RESIGNED'
	
);


-- 3. 직원 (2명)
INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	8,
	'김접수',
	'st1',
	'st1',
	'010-1234-5666',
	'78901',
	'서울특별시 서초구 xx동',
	'tooth빌라 101동 102호',
	DATE '2025-12-02',
	'ST',	
	NULL,
	'ACTIVE'
	
);


INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	7,
	'이접수',
	'st2',
	'st2',
	'010-1234-5677',
	'89012',
	'서울특별시 강서구 xx동',
	'tooth빌라 101동 102호',
	DATE '2024-11-22',
	'ST',	
	NULL,
	'ACTIVE'
	
);


-- 4. 관리자 (1명)
INSERT INTO employee (
	emp_idx,
	emp_name,
	emp_img,
	emp_no,
	emp_id,
	emp_pwd,
	emp_tel,
	emp_zipcode,
	emp_addr,
	emp_addr_detail,
	emp_regdate,
	emp_role,
	emp_position,
	emp_status
	)
	VALUES (
	8,
	'김관리',
	'adm01.png',
	'ADM-2021-001',
	'adm1',
	'adm1',
	'010-9012-5678',
	'90123',
	'서울특별시 강서구 xx동',
	'tooth리버파크 101동 1203호',
	DATE '2025-12-02',
	'ADM',	
	NULL,
	'ACTIVE'
);