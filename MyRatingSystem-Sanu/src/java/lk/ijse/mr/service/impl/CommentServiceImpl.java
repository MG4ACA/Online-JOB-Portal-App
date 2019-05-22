/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Comment;
import lk.ijse.mr.repository.CommentRepository;
import lk.ijse.mr.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository commnet;

    @Override
    public boolean addComment(Comment dto) throws Exception {
        return commnet.add(dto);
    }

    @Override
    public boolean deleteComment(int id) throws Exception {
        return commnet.delete(id);
    }

    @Override
    public boolean updateComment(Comment dto) throws Exception {
        return commnet.update(dto);
    }

    @Override
    public Comment searchComment(int id) throws Exception {
        return commnet.search(id);
    }

    @Override
    public Comment searchCommentByName(String name) throws Exception {
        return commnet.searchByName(name);
    }

    @Override
    public List<Comment> getCommentList() throws Exception {
        return commnet.getList();
    }

    @Override
    public List<Comment> getCommentListA(String query) throws Exception {
        return commnet.getListA(query);
    }

}
