/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Message;


/**
 *
 * @author Sanu
 */
public interface MessageRepository  {
    public boolean add(Message dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Message dto) throws Exception;
    public Message search(int id) throws Exception;
    public List<Message> getList() throws Exception; 
    public List<Message> getListA(String query) throws Exception; 
}
