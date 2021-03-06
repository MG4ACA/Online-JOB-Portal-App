/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Friend;
import lk.ijse.mr.repository.FriendRepository;
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
public class FriendRepositoryImpl implements FriendRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Friend dto) throws Exception {
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
    public boolean update(Friend dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Friend search(int id) throws Exception {
        Friend get = (Friend) getFactory().get(Friend.class, id);
        return get;
    }

    @Override
    public List<Friend> getList() throws Exception {
        List<Friend> list = getFactory().createQuery("from Friend f").list();
        return list;
    }

    @Override
    public List<Friend> getListA(String query) throws Exception {
        List<Friend> list = getFactory().createQuery(query).list();
        return list;
    }

}
