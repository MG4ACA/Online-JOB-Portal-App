/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.UserDetail;

/**
 *
 * @author Sanu
 */
public interface UserDetailRepository {
    public boolean add(UserDetail dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(UserDetail dto) throws Exception;
    public UserDetail search(int id) throws Exception;
    public List<UserDetail> getList() throws Exception;
    public List<UserDetail> getListA(String query) throws Exception; 
}
