/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Company;



/**
 *
 * @author Sanu
 */
public interface CompanyService{
    public boolean addCompany(Company dto) throws Exception;
    public boolean merge(Company dto) throws Exception;
    public boolean deleteCompany(int id) throws Exception;
    public boolean updateCompany(Company dto) throws Exception;
    public Company searchCompany(int id) throws Exception;
    public List<Company> getCompanyList() throws Exception;
    public List<Company> searchByName(String name)throws Exception;
    public Company searchByNameSkill(String name)throws Exception;
    public List<Company> getListForQuery(String query) throws Exception; 
}
