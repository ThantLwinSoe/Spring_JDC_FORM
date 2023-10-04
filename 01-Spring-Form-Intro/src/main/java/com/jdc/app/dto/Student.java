package com.jdc.app.dto;

import java.time.LocalDate;
import java.util.Objects;

public class Student {
	
	private String name;
	private String phone;
	private String email;
	private Course courses;
	private LocalDate date;
	private Gender gender;
	private boolean agree;
	private String remark;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}


	public Student(String name, String phone, String email, Course courses, LocalDate date, Gender gender,
			String remark) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.courses = courses;
		this.date = date;
		this.gender = gender;
		this.remark = remark;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Course getCourses() {
		return courses;
	}
	public void setCourses(Course courses) {
		this.courses = courses;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public boolean isAgree() {
		return agree;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}	
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public int hashCode() {
		return Objects.hash(agree, courses, date, email, gender, name, phone, remark);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		return agree == other.agree && courses == other.courses && Objects.equals(date, other.date)
				&& Objects.equals(email, other.email) && gender == other.gender && Objects.equals(name, other.name)
				&& Objects.equals(phone, other.phone) && Objects.equals(remark, other.remark);
	}

	
	
}