package org.example.domain;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "chart")
@Getter @Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class ChartEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, name = "chart_idx")
    private Long chartIdx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "app_idx")
    private TreatmentEntity appointment;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "pt_idx")
    private PatientEntity patient;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "emp_idx")
    private EmployeeEntity employee;

    @Column(length = 500)
    private String chartCc;

    @Column(length = 500)
    private String chartDx;

    @Column(length = 1000)
    private String chartTx;

    @Column(length = 100)
    private String chartToothNo;

    @CreationTimestamp
    @Column(name = "chart_regdate")
    private LocalDateTime chartRegdate;

}
