/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.FriendCircle;
import lk.ijse.mr.repository.FriendCircleRepository;
import lk.ijse.mr.service.FriendCircleService;
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
public class FriendCircleServiceImpl implements FriendCircleService {

    @Autowired
    private FriendCircleRepository friendRepo;

    @Override
    public boolean addFriendCircle(FriendCircle dto) throws Exception {
        return friendRepo.add(dto);
    }

    @Override
    public boolean deleteFriendCircle(int id) throws Exception {
        return friendRepo.delete(id);
    }

    @Override
    public boolean updateFriendCircle(FriendCircle dto) throws Exception {
        return friendRepo.update(dto);
    }

    @Override
    public FriendCircle searchFriendCircle(int id) throws Exception {
        return friendRepo.search(id);
    }

    @Override
    public List<FriendCircle> getFriendCircleList() throws Exception {
        return friendRepo.getList();
    }

    @Override
    public List<FriendCircle> getListForQuery(String query) throws Exception {
        return friendRepo.getListA(query);
    }

}
