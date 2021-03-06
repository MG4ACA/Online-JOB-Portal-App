/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Rating;

/**
 *
 * @author Sanu
 */
public interface RatingsService {
    public boolean addRatings(Rating dto) throws Exception;
    public boolean deleteRatings(int id) throws Exception;
    public boolean updateRatings(Rating dto) throws Exception;
    public Rating searchRatings(int id) throws Exception;
    public List<Rating> getAllRatingsList() throws Exception; 
    public List<Rating> getListForQuery(String query) throws Exception; 
}
