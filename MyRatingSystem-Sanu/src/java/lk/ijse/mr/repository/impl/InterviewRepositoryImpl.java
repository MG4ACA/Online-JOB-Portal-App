/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Interview;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.InterviewRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class InterviewRepositoryImpl implements InterviewRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate();
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Interview dto) throws Exception {
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
    public boolean update(Interview dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Interview search(int id) throws Exception {
        Interview get = (Interview) getFactory().get(Interview.class, id);
        return get;
    }

    @Override
    public List<Interview> getList() throws Exception {
        List<Interview> list = getFactory().createQuery("from Interview c").list();
        return list;
    }

    @Override
    public List<Interview> getListA(String query) throws Exception {
        List<Interview> list = getFactory().createQuery(query).list();
        return list;
    }

}
