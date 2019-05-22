/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Comment;

/**
 *
 * @author Sanu
 */
public interface CommentService {
    public boolean addComment(Comment dto) throws Exception;
    public boolean deleteComment(int id) throws Exception;
    public boolean updateComment(Comment dto) throws Exception;
    public Comment searchComment(int id) throws Exception;
    public Comment searchCommentByName(String name)throws Exception;
    public List<Comment> getCommentList() throws Exception;
    public List<Comment> getCommentListA(String query) throws Exception; 
}
