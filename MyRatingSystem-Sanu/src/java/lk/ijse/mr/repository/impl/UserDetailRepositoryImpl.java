/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.UserDetail;
import lk.ijse.mr.repository.UserDetailRepository;
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
public class UserDetailRepositoryImpl implements UserDetailRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(UserDetail dto) throws Exception {
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
    public boolean update(UserDetail dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public UserDetail search(int id) throws Exception {
        UserDetail get = (UserDetail) getFactory().get(UserDetail.class, id);
        return get;
    }

    @Override
    public List<UserDetail> getList() throws Exception {
        List<UserDetail> list = getFactory().createQuery("from UserDetail s").list();
        return list;
    }

    @Override
    public List<UserDetail> getListA(String query) throws Exception {
        List<UserDetail> list = getFactory().createQuery(query).list();
        return list;
    }

}
