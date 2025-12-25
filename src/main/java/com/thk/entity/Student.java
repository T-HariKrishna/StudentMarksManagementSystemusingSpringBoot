package com.thk.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    private int id;

    @Column(name = "name",length = 100, nullable = false)
    private String name;

    @Column(name = "reg_no", length = 50, nullable = false)
    private String regNo;

    @Column(name = "marks1")
    private Integer marks1;

    @Column(name = "marks2")
    private Integer marks2;

    @Column
    private Float percentage;

    @Column(length = 2)
    private String grade;

    @CreationTimestamp // Automatically sets current timestamp when the entity is saved
    @Column(name = "timestamp", updatable = false)
    private LocalDateTime timestamp;

    // Constructors
    public Student() {
    }

    public Student(String name, String regNo, Integer marks1, Integer marks2, Float percentage, String grade) {
        this.name = name;
        this.regNo = regNo;
        this.marks1 = marks1;
        this.marks2 = marks2;
        this.percentage = percentage;
        this.grade = grade;
    }


    // Getters and Setters (or use Lombok)
    // ...
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public Integer getMarks1() {
		return marks1;
	}

	public void setMarks1(Integer marks1) {
		this.marks1 = marks1;
	}

	public Integer getMarks2() {
		return marks2;
	}

	public void setMarks2(Integer marks2) {
		this.marks2 = marks2;
	}

	public Float getPercentage() {
		return percentage;
	}

	public void setPercentage(Float percentage) {
		this.percentage = percentage;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public LocalDateTime getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(LocalDateTime timestamp) {
		this.timestamp = timestamp;
	}

	

}
