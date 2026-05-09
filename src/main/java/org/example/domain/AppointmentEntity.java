package org.example.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "appointment")
@Setter @Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class AppointmentEntity {

    // PK 만들기
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, name = "app_idx")
    private Long appIdx;

    // FK 만들기
    @ManyToOne(fetch = FetchType.LAZY)  // 지연로딩 추가 - 모든 정보를 다 긁어오는 것 x / 필요한 정보만 긁어오기 o
                // app_idx 1 - pt_idx 10
                // app_idx 2 - pt_idx 10인 경우
                // 내가 만약 pt_idx 10이 필요하다면 두개 중 하나를 사용(원래부터 연결된건 하나니까)
                // app_idx 1이 이미 pt_idx가 10이라는 값은 원래부터 연결되었고 그 관계를 증명하는게 @ManyToOne
    @JoinColumn(nullable = false, name = "pt_idx")
    private PatientEntity patient;  // patient의 객체를 가짐(Long 타입이 아닌 객체!)

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "emp_idx")
    private EmployeeEntity employee;

    // 현재시간을 DB에 저장
    @Column(nullable = false, name = "app_date")
    private LocalDate appDate;

    @Column(nullable = false, length = 5, name = "app_time")
    private String appTime;

    @Column(length = 200)
    private String memo;

    // 현재 시간을 DB에 저장(날짜만) == SYSDATE
    @Column(name = "app_regdate")
    private LocalDate appRegDate;

    // 체크 제약
    @Enumerated(EnumType.STRING)
    @Column(length = 20, name = "app_type")
    private AppType appType;

    @Enumerated(EnumType.STRING)
    @Column(length = 20)
    private AppStatus appStatus;

}
