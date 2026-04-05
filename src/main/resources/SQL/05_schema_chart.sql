-- 1. 치아 차트 테이블
CREATE TABLE dental_chart (
    chart_idx        BIGSERIAL        PRIMARY KEY,     -- 차트 번호 (PK)
    app_idx          BIGINT           NOT NULL,        -- 예약 번호 (FK)
    pt_idx           BIGINT           NOT NULL,        -- 환자 번호 (FK)
    emp_idx          BIGINT           NOT NULL,        -- 담당 의사 번호 (FK)
    
    chart_cc         VARCHAR(500),      -- 환자가 온 이유
    chart_dx         VARCHAR(500),      -- 진단 결과
    chart_tx         VARCHAR(1000),     -- 치료 내용
    chart_tooth_no   VARCHAR(100),      -- 치료한 치아 번호들 ex) #11, #12, ...
    
    chart_regdate    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP, -- 진료 날짜
    

    CONSTRAINT fk_chart_app   -- 예약번호 (FK)
        FOREIGN KEY (app_idx) 
        REFERENCES appointment(app_idx),
        
    CONSTRAINT fk_chart_pt    -- 환자 번호 (FK)                            
        FOREIGN KEY (pt_idx)  
        REFERENCES patient(pt_idx),
    
    CONSTRAINT fk_chart_emp   -- 담당 의사 번호 (FK)                    
        FOREIGN KEY (emp_idx) 
        REFERENCES employee(emp_idx)
        
);


-- 2. 치아 사진 차트 테이블
CREATE TABLE tooth_image_chart (
    img_idx          BIGSERIAL    PRIMARY KEY,  
    pt_idx           BIGINT       NOT NULL,      -- 어떤 환자 사진인지(FK)
    chart_idx        BIGINT,                     -- 어떤 진료 때 찍었는지(FK, 선택사항)
    
    img_path         VARCHAR(500)    NOT NULL,   -- 서버나 스토리지에 저장된 파일 경로
    img_regdate      TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,	 -- 촬영 날짜
    
    
    img_category     VARCHAR(20)     -- 구내 / 구외
        CHECK (img_category IN ('INTRA', 'EXTRA') ),    
        
    img_type         VARCHAR(50)     -- 이미지 종류
        CHECK ( img_type IN ('PANORAMA', 'PA', 'CT', 'PHOTO') ),
    
    
    CONSTRAINT fk_img_pt 	-- 어떤 환자 사진인지(FK)
        FOREIGN KEY (pt_idx) 
        REFERENCES patient(pt_idx),
        
    CONSTRAINT fk_img_chart -- 어떤 진료 때 찍었는지(FK, 선택사항)
        FOREIGN KEY (chart_idx) 
        REFERENCES dental_chart(chart_idx)

);
 
  
   
-- 3. 전신질환 테이블
CREATE TABLE patient_medical_info (
    info_idx         BIGSERIAL        PRIMARY KEY,
    pt_idx           BIGINT           NOT NULL,    -- 환자 번호 (FK)
    med_name         VARCHAR(100),    -- 질환명 (당뇨, 고혈압 등)
    med_memo         VARCHAR(500),    -- 특이사항 (복용 약 등)
    
    CONSTRAINT fk_med_pt 	-- 환자 번호 (FK)
        FOREIGN KEY (pt_idx) 
        REFERENCES patient(pt_idx)
        
);    
