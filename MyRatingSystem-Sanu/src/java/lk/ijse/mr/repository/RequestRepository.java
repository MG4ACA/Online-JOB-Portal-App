/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Request;




/**
 *
 * @author Sanu
 */
public interface RequestRepository {
    public boolean add(Request dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Request dto) throws Exception;
    public Request search(int id) throws Exception;
    public List<Request> getList() throws Exception; 
    public List<Request> getListA(String query) throws Exception; 
}
