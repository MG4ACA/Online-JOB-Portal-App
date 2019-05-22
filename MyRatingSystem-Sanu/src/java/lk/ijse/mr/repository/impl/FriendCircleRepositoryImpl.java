/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.FriendCircle;
import lk.ijse.mr.repository.FriendCircleRepository;
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
public class FriendCircleRepositoryImpl implements FriendCircleRepository {

    //    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(FriendCircle dto) throws Exception {
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
    public boolean update(FriendCircle dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public FriendCircle search(int id) throws Exception {
        FriendCircle get = (FriendCircle) getFactory().get(FriendCircle.class, id);
        return get;
    }

    @Override
    public List<FriendCircle> getList() throws Exception {
        List<FriendCircle> list = getFactory().createQuery("from FriendCircle c").list();
        return list;
    }

    @Override
    public List<FriendCircle> getListA(String query) throws Exception {
        List<FriendCircle> list = getFactory().createQuery(query).list();
        return list;
    }

}
