/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Request;
import lk.ijse.mr.repository.RequestRepository;
import lk.ijse.mr.service.RequestService;
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
public class RequestServiceImpl implements RequestService {

    @Autowired
    private RequestRepository request;

    @Override
    public boolean addRequest(Request dto) throws Exception {
        return request.add(dto);
    }

    @Override
    public boolean deleteRequest(int id) throws Exception {
        return request.delete(id);
    }

    @Override
    public boolean updateRequest(Request dto) throws Exception {
        return request.update(dto);
    }

    @Override
    public Request searchRequest(int id) throws Exception {
        return request.search(id);
    }

    @Override
    public List<Request> getRequestList() throws Exception {
        return request.getList();
    }

    @Override
    public List<Request> getListForQuery(String query) throws Exception {
        return request.getListA(query);
    }

}
