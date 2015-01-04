package com.udts.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "UDTSZIPCODE")
public class Zipcode {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int zipcode;
	private String ziparea;
	private String zipcity;
	private String zipareacode;

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getZipareacode() {
		return zipareacode;
	}

	public void setZipareacode(String zipareacode) {
		this.zipareacode = zipareacode;
	}

	public String getZiparea() {
		return ziparea;
	}

	public void setZiparea(String ziparea) {
		this.ziparea = ziparea;
	}

	public String getZipcity() {
		return zipcity;
	}

	public void setZipcity(String zipcity) {
		this.zipcity = zipcity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
