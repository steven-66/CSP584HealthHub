package dao;

import java.util.List;

import bean.Doctor;

public interface DoctorDao{
	public List<Doctor> getDoctorBySpecialty(String specialty);
	public List<Doctor> getDoctorByFilters(List<String> filter);
}
