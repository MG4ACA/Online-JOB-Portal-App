/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Skill;

/**
 *
 * @author Sanu
 */
public interface SkillService {
    public boolean addSkill(Skill dto) throws Exception;
    public boolean merge(Skill dto) throws Exception;
    public boolean deleteSkill(int id) throws Exception;
    public boolean updateSkill(Skill dto) throws Exception;
    public Skill searchSkill(int id) throws Exception;
    public Skill searchByNa(String skillName) throws Exception;
    public List<Skill> getAllSkillList() throws Exception; 
    public List<Skill> advancedSkillSearch(String name) throws Exception; 
    public List<Skill> getListForQuery(String query) throws Exception; 
}
