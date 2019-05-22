/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Post;
import lk.ijse.mr.repository.PostRepository;
import lk.ijse.mr.service.PostDService;
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
public class PostDServiceImpl implements PostDService {

    @Autowired
    private PostRepository postSerice;

    @Override
    public boolean addPost(Post dto) throws Exception {
        return postSerice.add(dto);
    }

    @Override
    public boolean deletePost(int id) throws Exception {
        return postSerice.delete(id);
    }

    @Override
    public boolean updatePost(Post dto) throws Exception {
        return postSerice.update(dto);
    }

    @Override
    public Post searchPost(int id) throws Exception {
        return postSerice.search(id);
    }

    @Override
    public List<Post> getPostList() throws Exception {
        return postSerice.getList();
    }

    @Override
    public List<Post> getListForQuery(String query) throws Exception {
        return postSerice.getListA(query);
    }

}
