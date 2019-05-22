/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Wall;
import lk.ijse.mr.repository.WallRepository;
import lk.ijse.mr.service.WallService;
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
public class WallServiceImpl implements WallService {

    @Autowired
    private WallRepository wall;

    @Override
    public boolean addWall(Wall dto) throws Exception {
        return wall.add(dto);
    }

    @Override
    public boolean deleteWall(int id) throws Exception {
        return wall.delete(id);
    }

    @Override
    public boolean updateWall(Wall dto) throws Exception {
        return wall.update(dto);
    }

    @Override
    public Wall searchWall(int id) throws Exception {
        return wall.search(id);
    }

    @Override
    public List<Wall> getWallList() throws Exception {
        return wall.getList();
    }

    @Override
    public List<Wall> getListForQuery(String query) throws Exception {
        return wall.getListA(query);
    }

}
