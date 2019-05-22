/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.CompanySkills;
import lk.ijse.mr.repository.CompanySkillsRepository;
import lk.ijse.mr.service.CompanySkillService;
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
public class CompanySkillServiceImpl implements CompanySkillService {

    @Autowired
    private CompanySkillsRepository comSkill;

    @Override
    public boolean addCompanySkills(CompanySkills dto) throws Exception {
        return comSkill.add(dto);
    }

    @Override
    public boolean deleteCompanySkills(int id) throws Exception {
        return comSkill.delete(id);
    }

    @Override
    public boolean updateCompanySkills(CompanySkills dto) throws Exception {
        return comSkill.update(dto);
    }

    @Override
    public CompanySkills searchCompanySkills(int id) throws Exception {
        return comSkill.search(id);
    }

    @Override
    public CompanySkills searchCompanySkillsByName(String name) throws Exception {
        return comSkill.search(name);
    }

    @Override
    public List<CompanySkills> getCompanySkillsList() throws Exception {
        return comSkill.getCompany();
    }

    @Override
    public List<CompanySkills> getCompanySkillsListA(String query) throws Exception {
        return comSkill.getCompany(query);
    }

}
