/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Comment;
import lk.ijse.mr.repository.CommentRepository;
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
public class CommentRepositoryImpl implements CommentRepository {

    //    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Comment dto) throws Exception {
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
    public boolean update(Comment dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Comment search(int id) throws Exception {
        Comment get = (Comment) getFactory().get(Comment.class, id);
        return get;
    }

    @Override
    public Comment searchByName(String name) throws Exception {
        List<Comment> list = getFactory().createQuery("from Comment c where c.comment like '" + name + "%'").list();
        Comment c = null;
        for (Comment comment : list) {
            c = comment;
        }
        return c;
    }

    @Override
    public List<Comment> getList() throws Exception {
        List<Comment> list = getFactory().createQuery("from Comment c").list();
        return list;
    }

    @Override
    public List<Comment> getListA(String query) throws Exception {
        List<Comment> list = getFactory().createQuery(query).list();
        return list;
    }

}
