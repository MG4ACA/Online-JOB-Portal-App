/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.TextMessage;

/**
 *
 * @author Sanu
 */
public interface TextMessageRepository {
    public boolean add(TextMessage dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(TextMessage dto) throws Exception;
    public TextMessage search(int id) throws Exception;
    public List<TextMessage> getList() throws Exception;
    public List<TextMessage> getListA(String query) throws Exception; 
}
