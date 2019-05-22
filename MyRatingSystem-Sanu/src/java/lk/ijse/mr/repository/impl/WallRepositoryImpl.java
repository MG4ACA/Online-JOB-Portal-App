/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Wall;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.WallRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class WallRepositoryImpl implements WallRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Wall dto) throws Exception {
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
    public boolean update(Wall dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Wall search(int id) throws Exception {
        Wall get = (Wall) getFactory().get(Wall.class, id);
        return get;
    }

    @Override
    public List<Wall> getList() throws Exception {
        List<Wall> list = getFactory().createQuery("from Wall p").list();
        return list;
    }

    @Override
    public List<Wall> getListA(String query) throws Exception {
        List<Wall> list = getFactory().createQuery(query).list();
        return list;
    }

}
