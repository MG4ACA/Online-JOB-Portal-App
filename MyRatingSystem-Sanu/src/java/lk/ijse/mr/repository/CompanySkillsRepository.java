/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.CompanySkills;

/**
 *
 * @author Sanu
 */
public interface CompanySkillsRepository {
    public boolean add(CompanySkills dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(CompanySkills dto) throws Exception;
    public CompanySkills search(int id) throws Exception;
    public CompanySkills search(String name)throws Exception;
    public List<CompanySkills> getCompany() throws Exception;
    public List<CompanySkills> getCompany(String query) throws Exception; 
}
