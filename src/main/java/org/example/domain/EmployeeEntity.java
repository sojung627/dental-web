package org.example.domain;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "org/example/controller")
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class EmployeeEntity {

    // Pk 설정법
    // Id = PK설정 - GenertedValue = 자동증가 설정
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "emp_idx")
    private Long empIdx;


    // NOTNULL 설정 + 길이제한(VARCHAR50) + name 수정
    @Column(nullable = false, length = 50, name = "emp_name")
    private String empName;

    @Column(nullable = false, length = 50, name = "emp_img")
    private String empImg;

    @Column(nullable = false, length = 50, name = "emp_no")
    private String empNo;


    // 유니크 걸기!
    @Column(nullable = false, length = 50, unique = true, name = "emp_id")
    private String empId;


    @Column(nullable = false, length = 100, name = "emp_pwd")
    private String empPwd;

    @Column(length = 50, name = "emp_tel")
    private String empTel;

    @Column(length = 100, name = "emp_zipcode")
    private String empZipcode;

    @Column(length = 100, name = "emp_addr")
    private String empAddr;

    @Column(length = 100, name = "emp_addr_detail")
    private String empAddrDetail;

    @CreationTimestamp
    @Column(name = "emp_regdate")
    private LocalDateTime empRegdate;   // LocalDateTime == 날짜 + 시간 저장
                                        // Date == 날짜만 저장
    /*
        emp_role       	VARCHAR(20) 						-- 직원 종류 ( 의사 / 위생사 / 직원 / 관리자 )
        CHECK (emp_role IN ('DOC', 'HY', 'ST', 'ADM') ),	-- 권한 나누기 !
    * */
    @Enumerated(EnumType.STRING)    // enum은 name 변경 자동으로 됨 (그래도 안정성 고려해서 넣어두자)
    @Column(nullable = false, length = 20, name = "emp_role")
    private EmpRole empRole;    // emp_role은 관례상 잘 안씀
                                // Enum을 위한 Java 파일 하나 만들어야 함

    @Enumerated(EnumType.STRING) // EnumType.STRING -> 순서 바뀌어도 됨
    @Column(length = 20, name = "emp_position") // EnumType.ORDINAL -> 순서 바뀌면 안됨(걍 쓰지마)
    private EmpPosition empPosition;

    @Enumerated(EnumType.STRING)
    @Column(length = 20, name = "emp_status")
    private EmpStatus empStatus;

}
