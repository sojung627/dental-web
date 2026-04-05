package org.example.domain;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "treatment")
@Getter @Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class TreatmentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, name = "treat_idx")
    private Long treatIdx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "chart_idx")
    private ChartEntity chart;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "pt_idx")
    private PatientEntity ptIdx;

    @Column(name = "treat_cost")
    private Integer treatCost = 0;

    @Column(name = "treat_count")
    private Integer treatCount = 1;

    @Column(name = "treat_total")
    private Integer treatTotal;

    @CreationTimestamp
    @Column(name = "treat_regdate")
    private LocalDateTime treatRegdate;

    @Column(nullable = false, length = 100, name = "treat_item_name")
    private String treatItemName;

}
