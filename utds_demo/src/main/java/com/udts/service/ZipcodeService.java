package com.udts.service;

import java.util.List;

import com.udts.model.Zipcode;

public interface ZipcodeService {
	
	public void add(Zipcode p);

	public void update(Zipcode p);

	public List<Zipcode> list();

	public Zipcode getObjectById(int id);

	public void remove(int id);
	
}
