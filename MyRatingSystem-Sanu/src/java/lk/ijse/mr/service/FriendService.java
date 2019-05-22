/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Friend;

/**
 *
 * @author Sanu
 */
public interface FriendService {
    public boolean addFriend(Friend dto) throws Exception;
    public boolean deleteFriend(int id) throws Exception;
    public boolean updateFriend(Friend dto) throws Exception;
    public Friend searchFriend(int id) throws Exception;
    public List<Friend> getAllFriendList() throws Exception;
     public List<Friend> getListForQuery(String query) throws Exception; 
}
