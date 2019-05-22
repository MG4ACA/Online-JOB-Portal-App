/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Company;



/**
 *
 * @author Sanu
 */
public interface CompanyRepository {
    public boolean add(Company dto) throws Exception;
    public boolean merge(Company dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Company dto) throws Exception;
    public Company search(int id) throws Exception;
    public List<Company> getList() throws Exception;
    public List<Company> searchByName(String name)throws Exception;
    public Company searchByNS(String name)throws Exception;
    public List<Company> getListA(String query) throws Exception; 
}
