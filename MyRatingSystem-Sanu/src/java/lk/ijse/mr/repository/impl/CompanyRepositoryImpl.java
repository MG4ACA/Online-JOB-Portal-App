/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.CompanyRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class CompanyRepositoryImpl implements CompanyRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Company dto) throws Exception {
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
    public boolean update(Company dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Company search(int id) throws Exception {
        Company get = (Company) getFactory().get(Company.class, id);
        return get;
    }

    @Override
    public List<Company> getList() throws Exception {
        List<Company> list = getFactory().createQuery("from Company c").list();
        return list;
    }

    @Override
    public List<Company> searchByName(String name) throws Exception {
        List<Company> list = getFactory().createQuery("from Company c where c.comName like '" + name + "%'").list();
        return list;
    }

    @Override
    public Company searchByNS(String name) throws Exception {
        List<Company> list = getFactory().createQuery("from Company c where c.comName='" + name + "'").list();
        Company comp = null;
        for (Company company : list) {
            comp = company;
        }
        return comp;
    }

    @Override
    public List<Company> getListA(String query) throws Exception {
        List<Company> list = getFactory().createQuery(query).list();
        return list;
    }

    @Override
    public boolean merge(Company dto) throws Exception {
        getFactory().merge(dto);
        return true;
    }

}
