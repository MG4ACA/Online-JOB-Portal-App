/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Wall;


/**
 *
 * @author Sanu
 */
public interface WallService {
    public boolean addWall(Wall dto) throws Exception;
    public boolean deleteWall(int id) throws Exception;
    public boolean updateWall(Wall dto) throws Exception;
    public Wall searchWall(int id) throws Exception;
    public List<Wall> getWallList() throws Exception; 
    public List<Wall> getListForQuery(String query) throws Exception; 
}
