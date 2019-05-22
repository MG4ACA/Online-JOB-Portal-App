/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.JobRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class JobRepositoryImpl implements JobRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Job dto) throws Exception {
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
    public boolean update(Job dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Job search(int id) throws Exception {
        Job get = (Job) getFactory().get(Job.class, id);
        return get;
    }

    @Override
    public List<Job> getList() throws Exception {
        List<Job> list = getFactory().createQuery("from Job c").list();
        return list;
    }

    @Override
    public List<Job> getListA(String query) throws Exception {
        List<Job> list = getFactory().createQuery(query).list();
        return list;
    }

}
