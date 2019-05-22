/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.UserDetail;

/**
 *
 * @author Sanu
 */
public interface UserDetailService {
    public boolean addUserDetail(UserDetail dto) throws Exception;
    public boolean deleteUserDetail(int id) throws Exception;
    public boolean updateUserDetail(UserDetail dto) throws Exception;
    public UserDetail searchUserDetail(int id) throws Exception;
    public List<UserDetail> getAllUserDetailList() throws Exception; 
    public List<UserDetail> getListForQuery(String query) throws Exception; 
}
