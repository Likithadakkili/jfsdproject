package com.example.demo.model;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.JoinColumn;

@Entity
public class StudentCreds {
    @Id
    private String StudentId; // Primary key matching Student table
    private String Email;
    private String ContactNumber;
    private String Address;

    @OneToOne
    @JoinColumn(name = "StudentId", referencedColumnName = "StudentId")
	    private Student student;

    public StudentCreds() {
        super();
    }

    public StudentCreds(String studentId, String email, String contactNumber, String address, Student student) {
        super();
        StudentId = studentId;
        Email = email;
        ContactNumber = contactNumber;
        Address = address;
        this.student = student;
    }

    public String getStudentId() {
        return StudentId;
    }

    public void setStudentId(String studentId) {
        StudentId = studentId;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getContactNumber() {
        return ContactNumber;
    }

    public void setContactNumber(String contactNumber) {
        ContactNumber = contactNumber;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Override
    public String toString() {
        return "StudentDetails [StudentId=" + StudentId + ", Email=" + Email + ", ContactNumber=" + ContactNumber
                + ", Address=" + Address + "]";
    }
}