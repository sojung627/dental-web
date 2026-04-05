package org.example.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "patient")
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class PatientEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pt_idx")
    private Long ptIdx;

    @Column(nullable = false, length = 50, name = "pt_name")
    private String ptName;

    @Column(length = 50, name = "pt_tel")
    private String ptTel;

    @Column(length = 20, name = "pt_rrn")
    private String ptRrn;

    @Column(name = "pt_bday")
    private LocalDate ptBday;

    @Column(length = 100, name = "pt_zipcode")
    private String ptZipcode;

    @Column(length = 100, name = "pt_addr")
    private String ptAddr;

    @Column(length = 100, name = "pt_addr_detail")
    private String ptAddrDetail;

    @Enumerated(EnumType.STRING)
    @Column(length = 20, name = "emp_status")
    private EmpStatus empStatus;

    @Enumerated(EnumType.STRING)
    @Column(length = 1, name = "pt_gender")
    private PtGender ptGender;

}
