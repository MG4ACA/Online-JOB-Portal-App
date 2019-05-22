/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.repository.JobRepository;
import lk.ijse.mr.service.JobService;
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
public class JobServiceImpl implements JobService {

    @Autowired
    private JobRepository job;

    @Override
    public boolean addJob(Job dto) throws Exception {
        return job.add(dto);
    }

    @Override
    public boolean deleteJob(int id) throws Exception {
        return job.delete(id);
    }

    @Override
    public boolean updateJob(Job dto) throws Exception {
        return job.update(dto);
    }

    @Override
    public Job searchJob(int id) throws Exception {
        return job.search(id);
    }

    @Override
    public List<Job> getJobList() throws Exception {
        return job.getList();
    }

    @Override
    public List<Job> getListForQuery(String query) throws Exception {
        return job.getListA(query);
    }

}
