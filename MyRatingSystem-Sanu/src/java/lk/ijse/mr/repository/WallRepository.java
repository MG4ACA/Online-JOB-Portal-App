/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Wall;



/**
 *
 * @author Sanu
 */
public interface WallRepository {
    public boolean add(Wall dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Wall dto) throws Exception;
    public Wall search(int id) throws Exception;
    public List<Wall> getList() throws Exception;
    public List<Wall> getListA(String query) throws Exception; 
}
