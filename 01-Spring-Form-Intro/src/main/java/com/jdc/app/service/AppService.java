package com.jdc.app.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.jdc.app.dto.Student;

@Service
public class AppService {
	
	private List<Student> list;
	
	public AppService() {
		this.list = new ArrayList<>();
	}
	
	public void add_Student(Student student) {
		list.add(student);
	}
	
	public List<Student> get_Student() {
		
		return new ArrayList<Student>(list);
	}
}
