/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Interview;
import lk.ijse.mr.repository.InterviewRepository;
import lk.ijse.mr.service.InterviewService;
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
public class InterviewServiceImpl implements InterviewService {

    @Autowired
    private InterviewRepository interview;

    @Override
    public boolean addInterview(Interview dto) throws Exception {
        return interview.add(dto);
    }

    @Override
    public boolean deleteInterview(int id) throws Exception {
        return interview.delete(id);
    }

    @Override
    public boolean updateInterview(Interview dto) throws Exception {
        return interview.update(dto);
    }

    @Override
    public Interview searchInterview(int id) throws Exception {
        return interview.search(id);
    }

    @Override
    public List<Interview> getInterviewList() throws Exception {
        return interview.getList();
    }

    @Override
    public List<Interview> getListForQuery(String query) throws Exception {
        return interview.getListA(query);
    }

}
