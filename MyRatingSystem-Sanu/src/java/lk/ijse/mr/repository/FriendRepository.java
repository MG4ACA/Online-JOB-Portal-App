/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Friend;

/**
 *
 * @author Sanu
 */
public interface FriendRepository {
    public boolean add(Friend dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Friend dto) throws Exception;
    public Friend search(int id) throws Exception;
    public List<Friend> getList() throws Exception; 
    public List<Friend> getListA(String query) throws Exception; 
}
