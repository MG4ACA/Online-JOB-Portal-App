/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import lk.ijse.mr.repository.PostRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Sanu
 */
@Repository
//@Transactional(propagation = Propagation.SUPPORTS)
public class PostRepositoryImpl implements PostRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Post dto) throws Exception {
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
    public boolean update(Post dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Post search(int id) throws Exception {
        Post get = (Post) getFactory().get(Post.class, id);
        return get;
    }

    @Override
    public List<Post> getList() throws Exception {
        List<Post> list = getFactory().createQuery("from Post p").list();
        return list;
    }

    @Override
    public List<Post> getListA(String query) throws Exception {
        List<Post> list = getFactory().createQuery(query).list();
        return list;
    }

}
