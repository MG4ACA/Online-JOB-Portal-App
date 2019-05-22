/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.FriendCircle;

/**
 *
 * @author Sanu
 */
public interface FriendCircleService {
    public boolean addFriendCircle(FriendCircle dto) throws Exception;
    public boolean deleteFriendCircle(int id) throws Exception;
    public boolean updateFriendCircle(FriendCircle dto) throws Exception;
    public FriendCircle searchFriendCircle(int id) throws Exception;
    public List<FriendCircle> getFriendCircleList() throws Exception;
     public List<FriendCircle> getListForQuery(String query) throws Exception; 
}
