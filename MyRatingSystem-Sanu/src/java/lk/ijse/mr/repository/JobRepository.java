/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.Job;



/**
 *
 * @author Sanu
 */
public interface JobRepository {
    public boolean add(Job dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(Job dto) throws Exception;
    public Job search(int id) throws Exception;
    public List<Job> getList() throws Exception; 
    public List<Job> getListA(String query) throws Exception; 
}
