-- 1. 예약환자 (예약완료 - 2명)
INSERT INTO appointment (
pt_idx,
emp_idx,
app_date,
app_time,
app_memo,
app_regdate,
app_type,
app_status
)
VALUES (
1,
2,
DATE '2026-02-16',
'11:00',
'메모 : 김유아 - 김원장',
CURRENT_DATE,
'REVISIT',
'RESERVED'
);

INSERT INTO appointment (
pt_idx,
emp_idx,
app_date,
app_time,
app_memo,
app_regdate,
app_type,
app_status
)
VALUES (
3,
2,
DATE '2026-01-01',
'11:00',
'메모 : 김학생 - 이원장',
CURRENT_DATE,
'REVISIT',
'RESERVED'
);

-- 2. 예약환자 (예약취소 - 1명)
INSERT INTO appointment (
pt_idx,
emp_idx,
app_date,
app_time,
app_memo,
app_regdate,
app_type,
app_status
)
VALUES (
2,

4,

DATE '2026-01-01',
'11:00',
'메모 : 이유아 - 김원장',
CURRENT_DATE,
'REVISIT',
'CANCELLED'
);

-- 1. 예약환자 (진료완료 - 1명)
INSERT INTO appointment (
pt_idx,
emp_idx,
app_date,
app_time,
app_memo,
app_regdate,
app_type,
app_status
)
VALUES (
4,

4,

DATE '2022-04-01',
'11:00',
'메모 : 이학생 - 김원장',
CURRENT_DATE,
'REVISIT',
'DONE'
);

-- 1. 예약환자 (예약 후 안옴 - 1명)
INSERT INTO appointment (
pt_idx,
emp_idx,
app_date,
app_time,
app_memo,
app_regdate,
app_type,
app_status
)
VALUES (
5,

12,

DATE '2022-04-01',
'11:00',
'메모 : 김성인 - 이원장',
CURRENT_DATE,
'REVISIT',
'NOSHOW'
);