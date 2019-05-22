/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Post;


/**
 *
 * @author Sanu
 */
public interface PostRepository {
    public boolean add(Post dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Post dto) throws Exception;
    public Post search(int id) throws Exception;
    public List<Post> getList() throws Exception; 
    public List<Post> getListA(String query) throws Exception; 
}
