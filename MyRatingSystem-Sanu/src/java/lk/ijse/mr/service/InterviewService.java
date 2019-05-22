/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Interview;



/**
 *
 * @author Sanu
 */
public interface InterviewService {
    public boolean addInterview(Interview dto) throws Exception;
    public boolean deleteInterview(int id) throws Exception;
    public boolean updateInterview(Interview dto) throws Exception;
    public Interview searchInterview(int id) throws Exception;
    public List<Interview> getInterviewList() throws Exception; 
    public List<Interview> getListForQuery(String query) throws Exception; 
}
