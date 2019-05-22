/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.CV;
import lk.ijse.mr.service.CVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lk.ijse.mr.repository.CVRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class CVServiceImpl implements CVService {

    @Autowired
    private CVRepository cvDao;

    @Override
    public boolean addCV(CV dto) throws Exception {
        return cvDao.add(dto);
    }

    @Override
    public boolean deleteCV(int id) throws Exception {
        return cvDao.delete(id);
    }

    @Override
    public boolean updateCV(CV dto) throws Exception {
        return cvDao.update(dto);
    }

    @Override
    public CV searchCV(int id) throws Exception {
        return cvDao.search(id);
    }

    @Override
    public List<CV> getAllCVList() throws Exception {
        return cvDao.getList();
    }

}
