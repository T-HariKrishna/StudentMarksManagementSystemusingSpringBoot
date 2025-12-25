package com.thk.studentcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thk.entity.Student;
import com.thk.service.StudentService;

@Controller
public class StudentController {

    @Autowired
    @Qualifier("studentService")
    private StudentService studentService;

    @GetMapping("/StudentMarksManagementSystemApplication")
    public String login() {
        return "studentForm"; // should resolve to /WEB-INF/jsp/login.jsp
    }
   
    
    @PostMapping("/AddStudent")
    public String addStudent(
            @RequestParam String name,
            @RequestParam String regNo,
            @RequestParam(required = false) String marks1,
            @RequestParam(required = false) String marks2,
            @RequestParam(required = false) String percentage,
            @RequestParam(required = false) String grade
    ) {
        Integer m1 = (marks1 != null && !marks1.isEmpty()) ? Integer.parseInt(marks1) : null;
        Integer m2 = (marks2 != null && !marks2.isEmpty()) ? Integer.parseInt(marks2) : null;
        Float perc = (percentage != null && !percentage.isEmpty()) ? Float.parseFloat(percentage) : null;
        String gr = (grade != null && !grade.isEmpty()) ? grade : null;

        Student student = new Student(name, regNo, m1, m2, perc, gr);
        System.err.println(name+" " +regNo+" " + m1+" "+ m2+" " +perc+" "+ gr);

        boolean isSaved = studentService.registerStudent(student);

        return isSaved ? "successPage" : "failedPage";
    }
    
    @GetMapping("/AddStudent")
    public String showAddStudentForm() {
        return "studentForm"; // this is your JSP filename (without .jsp)
    }
}
