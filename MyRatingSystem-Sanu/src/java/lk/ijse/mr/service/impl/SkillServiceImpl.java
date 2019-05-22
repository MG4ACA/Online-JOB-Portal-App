/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Skill;
import lk.ijse.mr.repository.SkillRepository;
import lk.ijse.mr.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class SkillServiceImpl implements SkillService {

    @Autowired
    private SkillRepository skillRepo;

    @Override
    public boolean addSkill(Skill dto) throws Exception {
        return skillRepo.add(dto);
    }

    @Override
    public boolean deleteSkill(int id) throws Exception {
        return skillRepo.delete(id);
    }

    @Override
    public boolean updateSkill(Skill dto) throws Exception {
        return skillRepo.update(dto);
    }

    @Override
    public Skill searchSkill(int id) throws Exception {
        return skillRepo.search(id);
    }

    @Override
    public List<Skill> getAllSkillList() throws Exception {
        return skillRepo.getList();
    }

    @Override
    public List<Skill> advancedSkillSearch(String name) throws Exception {
        return skillRepo.advancedSearch(name);
    }

    @Override
    public List<Skill> getListForQuery(String query) throws Exception {
        return skillRepo.getListA(query);
    }

    @Override
    public Skill searchByNa(String skillName) throws Exception {
        return skillRepo.searchByNa(skillName);
    }

    @Override
    public boolean merge(Skill dto) throws Exception {
       return skillRepo.merge(dto);
    }

}
