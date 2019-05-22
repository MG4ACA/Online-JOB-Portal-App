/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Country;

/**
 *
 * @author Sanu
 */
public interface CountryRepository {
    public boolean add(Country dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Country dto) throws Exception;
    public Country search(int id) throws Exception;
    public Country searchByName(String name)throws Exception;
    public List<Country> getList() throws Exception;
    public List<Country> getListA(String query) throws Exception; 
    
}
