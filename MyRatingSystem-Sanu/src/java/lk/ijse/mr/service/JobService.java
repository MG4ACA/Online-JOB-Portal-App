/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Job;



/**
 *
 * @author Sanu
 */
public interface JobService {
    public boolean addJob(Job dto) throws Exception;
    public boolean deleteJob(int id) throws Exception;
    public boolean updateJob(Job dto) throws Exception;
    public Job searchJob(int id) throws Exception;
    public List<Job> getJobList() throws Exception;  
    public List<Job> getListForQuery(String query) throws Exception; 
}
