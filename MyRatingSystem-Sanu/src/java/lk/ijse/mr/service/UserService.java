/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.User;


/**
 *
 * @author Sanu
 */
public interface UserService  {
    public boolean addUser(User dto) throws Exception;
    public boolean deleteUser(int id) throws Exception;
    public boolean mergeUser(User dto) throws Exception;
    public boolean saveUpdateUser(User dto)throws Exception;
    public boolean updateUser(User dto) throws Exception;
    public User searchUser(int id) throws Exception;
    public List<User> getUserList() throws Exception; 
    public List<User> advancedSearch(String name) throws Exception; 
    public User searchForLogin(String email, String pass)throws Exception;
    public List<User> getListForQuery(String query) throws Exception; 
    public void flush()throws Exception;

}
