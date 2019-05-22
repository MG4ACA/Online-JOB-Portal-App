/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.CompanySkills;

/**
 *
 * @author Sanu
 */
public interface CompanySkillService {
    public boolean addCompanySkills(CompanySkills dto) throws Exception;
    public boolean deleteCompanySkills(int id) throws Exception;
    public boolean updateCompanySkills(CompanySkills dto) throws Exception;
    public CompanySkills searchCompanySkills(int id) throws Exception;
    public CompanySkills searchCompanySkillsByName(String name)throws Exception;
    public List<CompanySkills> getCompanySkillsList() throws Exception;
    public List<CompanySkills> getCompanySkillsListA(String query) throws Exception; 
}
