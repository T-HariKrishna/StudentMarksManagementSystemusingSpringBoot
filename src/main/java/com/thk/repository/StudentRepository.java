package com.thk.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thk.entity.Student;


@Repository
public interface StudentRepository extends CrudRepository<Student, Integer>{
	// No need to define insert method – JPA handles save()
}
