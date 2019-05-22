/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Friend;
import lk.ijse.mr.repository.FriendRepository;
import lk.ijse.mr.service.FriendService;
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
public class FriendServiceImpl implements FriendService {

    @Autowired
    private FriendRepository friendRepo;

    @Override
    public boolean addFriend(Friend dto) throws Exception {
        return friendRepo.add(dto);
    }

    @Override
    public boolean deleteFriend(int id) throws Exception {
        return friendRepo.delete(id);
    }

    @Override
    public boolean updateFriend(Friend dto) throws Exception {
        return friendRepo.update(dto);
    }

    @Override
    public Friend searchFriend(int id) throws Exception {
        return friendRepo.search(id);
    }

    @Override
    public List<Friend> getAllFriendList() throws Exception {
        return friendRepo.getList();
    }

    @Override
    public List<Friend> getListForQuery(String query) throws Exception {
        return friendRepo.getListA(query);
    }

}
