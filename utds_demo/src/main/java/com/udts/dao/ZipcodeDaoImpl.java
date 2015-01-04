package com.udts.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.udts.model.Zipcode;

public class ZipcodeDaoImpl implements ZipcodeDao{

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void add(Zipcode zipcode) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(zipcode);
		System.out.println("Person saved successfully, Person Details=" + zipcode);
	}

	@Override
	public void update(Zipcode p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		System.out.println("Person updated successfully, Person Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Zipcode> list() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Zipcode> personsList = session.createQuery("from Zipcode").list();
		for (Zipcode p : personsList) {
			System.out.println("Person List::" + p);
		}
		return personsList;
	}

	@Override
	public Zipcode getObjectById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Zipcode p = (Zipcode) session.load(Zipcode.class, new Integer(id));
		System.out.println("Person loaded successfully, Person details=" + p);
		return p;
	}

	@Override
	public void remove(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Zipcode p = (Zipcode) session.load(Zipcode.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		System.out.println("Person deleted successfully, person details=" + p);
	}
}
