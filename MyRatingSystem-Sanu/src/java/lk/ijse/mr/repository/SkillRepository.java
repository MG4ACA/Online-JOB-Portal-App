/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Skill;

/**
 *
 * @author Sanu
 */
public interface SkillRepository {
    public boolean add(Skill dto) throws Exception;
    public boolean merge(Skill dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Skill dto) throws Exception;
    public Skill search(int id) throws Exception;
    public Skill searchByNa(String skillName) throws Exception;
    public List<Skill> getList() throws Exception; 
    public List<Skill> advancedSearch(String name) throws Exception; 
    public List<Skill> getListA(String query) throws Exception; 
}
