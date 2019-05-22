/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Province;

/**
 *
 * @author Sanu
 */
public interface ProvinceRepository {
    public boolean add(Province dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Province dto) throws Exception;
    public Province search(int id) throws Exception;
    public List<Province> getList() throws Exception;
    public List<Province> getListA(String query) throws Exception; 
}
