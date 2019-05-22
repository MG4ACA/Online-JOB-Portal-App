/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Comment;

/**
 *
 * @author Sanu
 */
public interface CommentRepository {
    public boolean add(Comment dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Comment dto) throws Exception;
    public Comment search(int id) throws Exception;
    public Comment searchByName(String name)throws Exception;
    public List<Comment> getList() throws Exception;
    public List<Comment> getListA(String query) throws Exception; 
}
