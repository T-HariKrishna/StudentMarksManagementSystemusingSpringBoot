package com.thk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thk.entity.Student;
import com.thk.repository.StudentRepository;

@Service("studentService")
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public boolean registerStudent(Student student) {
        Student save = studentRepository.save(student);
        System.out.println(save);
        if(save!=null) {
        	return true; 
        }
        return false; 
        
    }
}
