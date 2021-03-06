/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Country;
import lk.ijse.mr.repository.CountryRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class CountryRepositoryImpl implements CountryRepository {

    //    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Country dto) throws Exception {
        Serializable save = getFactory().save(dto);
        if (save != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) throws Exception {
        getFactory().delete(search(id));
        return true;
    }

    @Override
    public boolean update(Country dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Country search(int id) throws Exception {
        Country get = (Country) getFactory().get(Country.class, id);
        return get;
    }

    @Override
    public List<Country> getList() throws Exception {
        List<Country> list = getFactory().createQuery("from Country c").list();
        return list;
    }

    @Override
    public Country searchByName(String name) throws Exception {
        List<Country> list = getFactory().createQuery("from Country c where c.countryname='" + name + "'").list();
        Country ctry = null;
        for (Country country : list) {
            ctry = country;
        }
        return ctry;
    }

    @Override
    public List<Country> getListA(String query) throws Exception {
        List<Country> list = getFactory().createQuery(query).list();
        return list;
    }

}
