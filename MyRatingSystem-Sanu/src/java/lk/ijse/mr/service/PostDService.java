/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Post;



/**
 *
 * @author Sanu
 */
public interface PostDService{
    public boolean addPost(Post dto) throws Exception;
    public boolean deletePost(int id) throws Exception;
    public boolean updatePost(Post dto) throws Exception;
    public Post searchPost(int id) throws Exception;
    public List<Post> getPostList() throws Exception;
    public List<Post> getListForQuery(String query) throws Exception; 
}
