/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Province;

/**
 *
 * @author Sanu
 */
public interface ProvinceService {
    public boolean addProvince(Province dto) throws Exception;
    public boolean deleteProvince(int id) throws Exception;
    public boolean updateProvince(Province dto) throws Exception;
    public Province searchProvince(int id) throws Exception;
    public List<Province> getAllCVList() throws Exception;
    public List<Province> getListForQuery(String query) throws Exception; 
}
