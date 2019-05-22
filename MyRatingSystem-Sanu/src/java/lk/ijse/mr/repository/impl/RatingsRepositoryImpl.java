/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Rating;
import lk.ijse.mr.repository.RatingsRepository;
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
public class RatingsRepositoryImpl implements RatingsRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Rating dto) throws Exception {
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
    public boolean update(Rating dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Rating search(int id) throws Exception {
        Rating get = (Rating) getFactory().get(Rating.class, id);
        return get;
    }

    @Override
    public List<Rating> getList() throws Exception {
        List<Rating> list = getFactory().createQuery("from Ratings r").list();
        return list;
    }

    @Override
    public List<Rating> getListA(String query) throws Exception {
        List<Rating> list = getFactory().createQuery(query).list();
        return list;
    }

}
