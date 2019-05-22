/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.UserDetail;
import lk.ijse.mr.repository.UserDetailRepository;
import lk.ijse.mr.service.UserDetailService;
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
public class UserDetailServiceImpl implements UserDetailService {

    @Autowired
    private UserDetailRepository userDetailRepo;

    @Override
    public boolean addUserDetail(UserDetail dto) throws Exception {
        return userDetailRepo.add(dto);
    }

    @Override
    public boolean deleteUserDetail(int id) throws Exception {
        return userDetailRepo.delete(id);
    }

    @Override
    public boolean updateUserDetail(UserDetail dto) throws Exception {
        return userDetailRepo.update(dto);
    }

    @Override
    public UserDetail searchUserDetail(int id) throws Exception {
        return userDetailRepo.search(id);
    }

    @Override
    public List<UserDetail> getAllUserDetailList() throws Exception {
        return userDetailRepo.getList();
    }

    @Override
    public List<UserDetail> getListForQuery(String query) throws Exception {
        return userDetailRepo.getListA(query);
    }

}
