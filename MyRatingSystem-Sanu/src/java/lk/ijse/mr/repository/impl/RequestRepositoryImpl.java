/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.RequestRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class RequestRepositoryImpl implements RequestRepository {

//    @Autowired
//    private HibernateTemplate getFactory();
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Request dto) throws Exception {
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
    public boolean update(Request dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Request search(int id) throws Exception {
        Request get = (Request) getFactory().get(Request.class, id);
        return get;
    }

    @Override
    public List<Request> getList() throws Exception {
        List<Request> list = getFactory().createQuery("from Request p").list();
        return list;
    }

    @Override
    public List<Request> getListA(String query) throws Exception {
        List<Request> list = getFactory().createQuery(query).list();
        return list;
    }

}
