/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lk.ijse.mr.repository.UserRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository user;

    @Override
    public User searchForLogin(String email, String pass) throws Exception {
        return user.searchForLogin(email, pass);
    }

    @Override
    public boolean addUser(User dto) throws Exception {
        return user.add(dto);
    }

    @Override
    public boolean deleteUser(int id) throws Exception {
        return user.delete(id);
    }

    @Override
    public boolean updateUser(User dto) throws Exception {
        return user.update(dto);
    }

    @Override
    public User searchUser(int id) throws Exception {
        return user.search(id);
    }

    @Override
    public List<User> getUserList() throws Exception {
        return user.getList();
    }

    @Override
    public List<User> advancedSearch(String name) throws Exception {
        return user.advancedSearch(name);
    }

    @Override
    public List<User> getListForQuery(String query) throws Exception {
        return user.getListA(query);
    }

    @Override
    public boolean mergeUser(User dto) throws Exception {
        return user.merge(dto);
    }

    @Override
    public boolean saveUpdateUser(User dto) throws Exception {
        return user.saveUpdate(dto);
    }

    @Override
    public void flush() throws Exception {
        user.flush();
    }

}
