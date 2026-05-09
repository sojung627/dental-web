package org.example.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "insurance")
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class InsuranceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, name = "ins_idx")
    private Long insIdx;

    @Column(name = "ins_code", length = 20, nullable = false, unique = true)
    private String insCode;

    @Column(name = "ins_name", length = 100, nullable = false)
    private String insName;

    @Column(name = "ins_coverage")
    private int insCoverage = 70;

    @Column(name = "ins_memo", length = 500)
    private String insMemo;

}
