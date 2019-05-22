/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Province;
import lk.ijse.mr.repository.ProvinceRepository;
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
public class ProvinceRepositoryImpl implements ProvinceRepository {

    //    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Province dto) throws Exception {
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
    public boolean update(Province dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Province search(int id) throws Exception {
        Province get = (Province) getFactory().get(Province.class, id);
        return get;
    }

    @Override
    public List<Province> getList() throws Exception {
        List<Province> list = getFactory().createQuery("from Province c").list();
        return list;
    }

    @Override
    public List<Province> getListA(String query) throws Exception {
        List<Province> list = getFactory().createQuery(query).list();
        return list;
    }

}
