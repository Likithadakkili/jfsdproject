package com.example.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.StudentFeedback;

public interface feedbackRepository extends JpaRepository<StudentFeedback, Integer> {
}