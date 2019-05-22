/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository.impl;

import java.io.Serializable;
import java.util.List;
import lk.ijse.mr.core.CompanySkills;
import lk.ijse.mr.repository.CompanySkillsRepository;
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
public class CompanySkillsRepositoryImpl implements CompanySkillsRepository {

    //    @Autowired
//    private HibernateTemplate hibTemplate;
    @Autowired
    private SessionFactory sessionFactory;

    private Session getFactory() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public boolean add(CompanySkills dto) throws Exception {
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
    public boolean update(CompanySkills dto) throws Exception {
        getFactory().update(dto);
        return true;
    }

    @Override
    public CompanySkills search(int id) throws Exception {
        CompanySkills get = (CompanySkills) getFactory().get(CompanySkills.class, id);
        return get;
    }

    @Override
    public CompanySkills search(String name) throws Exception {
        List<CompanySkills> list = getFactory().createQuery("from CompanySkills c where c.skillName='" + name + "'").list();
        CompanySkills comp = null;
        for (CompanySkills company : list) {
            comp = company;
        }
        return comp;
    }

    @Override
    public List<CompanySkills> getCompany() throws Exception {
        List<CompanySkills> list = getFactory().createQuery("from CompanySkills c").list();
        return list;
    }

    @Override
    public List<CompanySkills> getCompany(String query) throws Exception {
        List<CompanySkills> list = getFactory().createQuery(query).list();
        return list;
    }

}
