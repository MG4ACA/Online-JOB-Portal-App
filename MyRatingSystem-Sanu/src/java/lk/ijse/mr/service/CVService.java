/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.CV;


/**
 *
 * @author Sanu
 */
public interface CVService {
    public boolean addCV(CV dto) throws Exception;
    public boolean deleteCV(int id) throws Exception;
    public boolean updateCV(CV dto) throws Exception;
    public CV searchCV(int id) throws Exception;
    public List<CV> getAllCVList() throws Exception;

}
