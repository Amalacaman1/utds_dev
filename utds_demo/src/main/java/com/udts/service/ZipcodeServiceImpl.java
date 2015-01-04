package com.udts.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.udts.dao.ZipcodeDao;
import com.udts.model.Zipcode;

public class ZipcodeServiceImpl implements ZipcodeService{
	
	private ZipcodeDao zipcodeDAO;

	@Override
	@Transactional
	public void add(Zipcode p) {
		this.zipcodeDAO.add(p);
	}

	@Override
	@Transactional
	public void update(Zipcode p) {
		this.zipcodeDAO.update(p);
	}

	@Override
	@Transactional
	public List<Zipcode> list() {
		return this.zipcodeDAO.list();
	}

	@Override
	@Transactional
	public Zipcode getObjectById(int id) {
		return this.zipcodeDAO.getObjectById(id);
	}

	@Override
	@Transactional
	public void remove(int id) {
		this.zipcodeDAO.remove(id);
	}

	public ZipcodeDao getZipcodeDAO() {
		return zipcodeDAO;
	}

	public void setZipcodeDAO(ZipcodeDao zipcodeDAO) {
		this.zipcodeDAO = zipcodeDAO;
	}
}
