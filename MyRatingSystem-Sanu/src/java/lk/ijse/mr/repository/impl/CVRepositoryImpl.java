/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.CV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.CVRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class CVRepositoryImpl implements CVRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(CV dto) throws Exception {
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
    public boolean update(CV dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public CV search(int id) throws Exception {
        CV get = (CV) getFactory().get(CV.class, id);
        return get;
    }

    @Override
    public List<CV> getList() throws Exception {
        List<CV> list = getFactory().createQuery("from CV c").list();
        return list;      
    }

}
