/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.repository;

import java.util.List;
import lk.ijse.mr.core.CV;




/**
 *
 * @author Sanu
 */
public interface CVRepository  {
    public boolean add(CV dto) throws Exception;
    public boolean delete(int id) throws Exception;
    public boolean update(CV dto) throws Exception;
    public CV search(int id) throws Exception;
    public List<CV> getList() throws Exception;
}
