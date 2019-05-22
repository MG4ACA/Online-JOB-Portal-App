/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.TextMessage;

/**
 *
 * @author Sanu
 */
public interface TextMessageService {
    public boolean addTextMessage(TextMessage dto) throws Exception;
    public boolean deleteTextMessage(int id) throws Exception;
    public boolean updateTextMessage(TextMessage dto) throws Exception;
    public TextMessage searchTextMessage(int id) throws Exception;
    public List<TextMessage> getAllTextMessageList() throws Exception; 
    public List<TextMessage> getListForQuery(String query) throws Exception; 
}
