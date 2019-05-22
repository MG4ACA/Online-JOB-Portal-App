/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Rating;

/**
 *
 * @author Sanu
 */
public interface RatingsRepository {
    public boolean add(Rating dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Rating dto) throws Exception;
    public Rating search(int id) throws Exception;
    public List<Rating> getList() throws Exception;
    public List<Rating> getListA(String query) throws Exception; 
}
