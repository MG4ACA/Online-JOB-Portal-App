/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Request;

/**
 *
 * @author Sanu
 */
public interface RequestService {
    public boolean addRequest(Request dto) throws Exception;
    public boolean deleteRequest(int id) throws Exception;
    public boolean updateRequest(Request dto) throws Exception;
    public Request searchRequest(int id) throws Exception;
    public List<Request> getRequestList() throws Exception; 
    public List<Request> getListForQuery(String query) throws Exception; 
}
