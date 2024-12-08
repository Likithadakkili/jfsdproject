package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.StudentFeedback;
import com.example.demo.repository.feedbackRepository;

@Controller
public class FeedbackController {

    @Autowired
    private feedbackRepository feedbackRepository;

    @PostMapping("/saveFeedback")
    public String saveFeedback(@RequestParam String name, @RequestParam String email, @RequestParam String message) {
        StudentFeedback feedback = new StudentFeedback();
        feedback.setName(name);
        feedback.setEmail(email);
        feedback.setMessage(message);
        feedbackRepository.save(feedback);
        return "redirect:/index.jsp"; // Redirect to a thank-you page
    }
}