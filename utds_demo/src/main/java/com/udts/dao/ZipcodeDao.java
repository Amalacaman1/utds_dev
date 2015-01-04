package com.udts.dao;

import java.util.List;

import com.udts.model.Zipcode;

public interface ZipcodeDao {

    public void add(Zipcode ojb);
    public void update(Zipcode ojb);
    public List<Zipcode> list();
    public Zipcode getObjectById(int id);
    public void remove(int id);
}
