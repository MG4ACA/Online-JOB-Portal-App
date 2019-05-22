/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.User;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.UserRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class UserRepositoryImpl implements UserRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public User searchForLogin(String email, String pass) throws Exception {
        List<User> list = (List<User>) getFactory().createQuery("from User p where p.email='" + email + "' and p.password='" + pass + "'").list();
        User cureentU = null;
        for (User user : list) {
            cureentU = user;
        }
        return cureentU;
    }

    @Override
    public boolean add(User dto) throws Exception {
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
    public boolean update(User dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public User search(int id) throws Exception {
        User get = (User) getFactory().get(User.class, id);
        return get;
    }

    @Override
    public List<User> getList() throws Exception {
        List<User> list = getFactory().createQuery("from User p").list();
        return list;
    }

    @Override
    public List<User> advancedSearch(String name) throws Exception {
        List<User> list = getFactory().createQuery("from User u where u.firstName like '" + name + "%' or u.email like '" + name + "%' or u.lastName like '" + name + "%'").list();
        return list;
    }

    @Override
    public List<User> getListA(String query) throws Exception {
        List<User> list = getFactory().createQuery(query).list();
        return list;
    }

    @Override
    public boolean merge(User dto) throws Exception {
        getFactory().merge(dto);
        return true;
    }

    @Override
    public boolean saveUpdate(User dto) throws Exception {
        getFactory().saveOrUpdate(dto);
        return true;
    }

    @Override
    public void flush() throws Exception {
       getFactory().flush();
    }

}
