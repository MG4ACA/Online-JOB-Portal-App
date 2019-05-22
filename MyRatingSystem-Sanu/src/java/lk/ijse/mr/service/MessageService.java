/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Message;



/**
 *
 * @author Sanu
 */
public interface MessageService  {
    public boolean addMessage(Message dto) throws Exception;
    public boolean deleteMessage(int id) throws Exception;
    public boolean updateMessage(Message dto) throws Exception;
    public Message searchMessage(int id) throws Exception;
    public List<Message> getMessageList() throws Exception; 
    public List<Message> getListForQuery(String query) throws Exception; 
}
