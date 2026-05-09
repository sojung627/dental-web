package org.example.domain;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "payment")
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class PaymentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, name = "pay_idx")
    private Long payIdx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "chart_idx")
    private ChartEntity chart;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "pt_idx")
    private PatientEntity patient;

    @Column(name = "pay_total_amount", nullable = false)
    private int payTotalAmount;

    @Column(name = "pay_patient_amount", nullable = false)
    private int payPatientAmount;

    @Column(name = "pay_ins_amount")
    private int payInsAmount = 0;

    @CreationTimestamp
    @Column(name = "pay_date")
    private LocalDateTime payDate;

    @Enumerated(EnumType.STRING)
    @Column(length = 20, name = "pay_method")
    private PayMethod payMethod;

    @Enumerated(EnumType.STRING)
    @Column(length = 20, name = "pay_status")
    private PayStatus payStatus;

}
