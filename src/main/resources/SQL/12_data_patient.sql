-- 유아 2 / 학생 2 / 성인 2 / 노인 2

-- 1. 환자 (유아 2명)  - 6살(만 4세)
INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'김유아',
'010-1111-1111',
DATE '2021-11-11',
'201111-4123456',
DATE '2026-02-15',
'12345',
'대구광역시 치아동 244길',
'T편한세상 105동 402호',
'F'
);

INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'이유아',
'010-2222-2222',
DATE '2020-12-12',
'201212-4654321',
DATE '2026-02-15',
'12345',
'대구광역시 치은동 244길',
'GINGIVA센트럴파크 101동 202호',
'F'
);

-- 2. 환자 (학생 2명) - 15살(만 13세)
INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'김학생',
'010-1111-0325',
DATE '2002-03-25',
'120325-3812345',
DATE '2026-02-11',
'12345',
'경기도 치근시 치근단동 200길',
'ROOT주공 2단지 208동 1202호',
'M'
);

INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'이학생',
'010-1234-1117',
DATE '2002-11-17',
'121117-4812345',
DATE '2025-03-25',
'12345',
'서울광역시 상악동 444길',
' maxillary sinus주공단지 408동 404호',
'F'
);

-- 3. 환자 (성인 2명) - 25세(23세)
INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'김성인',
'010-1234-0618',
DATE '2002-06-19',
'020619-4812345',
DATE '2025-12-15',
'12345',
'경기도 고양시 치즈동 24길',
'야옹빌라 402호',
'F'
);

INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'이성인',
'010-1234-0618',
DATE '2002-06-19',
'020619-4812345',
DATE '2025-12-15',
'12345',
'경기도 고양시 먼지동 24길',
'먼지빌라 402호',
'F'
);

-- 3. 환자 (노인 2명) - 75세(만 73세)
INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'김노인',
'010-8527-1234',
DATE '1952-06-19',
'020619-4812345',
DATE '2025-12-15',
'12345',
'경기도 고양시 치즈동 24길',
'야옹빌라 402호',
'F'
);

INSERT INTO patient (
pt_name,
pt_tel,
pt_bday,
pt_rrn,
pt_regdate,
pt_zipcode,
pt_addr,
pt_addr_detail,
pt_gender
)
VALUES (
'이노인',
'010-1234-0618',
DATE '1952-06-19',
'020619-4812345',
DATE '2025-12-15',
'12345',
'경기도 고양시 먼지동 24길',
'먼지빌라 402호',
'F'
);