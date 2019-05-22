/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.Skill;
import lk.ijse.mr.repository.SkillRepository;
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
public class SkillRepositoryImpl implements SkillRepository {

//    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(Skill dto) throws Exception {
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
    public boolean update(Skill dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public Skill search(int id) throws Exception {
        Skill get = (Skill) getFactory().get(Skill.class, id);
        return get;
    }

    @Override
    public List<Skill> getList() throws Exception {
        List<Skill> list = getFactory().createQuery("from Skill s").list();
        return list;
    }

    @Override
    public List<Skill> advancedSearch(String name) throws Exception {
        List<Skill> list = getFactory().createQuery("from Skill s where s.skillName like '" + name + "%'").list();
        return list;
    }

    @Override
    public List<Skill> getListA(String query) throws Exception {
        List<Skill> list = getFactory().createQuery(query).list();
        return list;
    }

    @Override
    public Skill searchByNa(String skillName) throws Exception {
        List<Skill> list = getFactory().createQuery("from Skill s where s.skillName='" + skillName + "'").list();
        Skill tt = null;
        for (Skill skill : list) {
            tt = skill;
        }
        return tt;
    }

    @Override
    public boolean merge(Skill dto) throws Exception {
        getFactory().merge(dto);
        return true;
    }

}
