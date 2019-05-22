/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Province;
import lk.ijse.mr.repository.ProvinceRepository;
import lk.ijse.mr.service.ProvinceService;
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
public class ProvinceServiceImpl implements ProvinceService {

    @Autowired
    private ProvinceRepository proviceService;

    @Override
    public boolean addProvince(Province dto) throws Exception {
        return proviceService.add(dto);
    }

    @Override
    public boolean deleteProvince(int id) throws Exception {
        return proviceService.delete(id);
    }

    @Override
    public boolean updateProvince(Province dto) throws Exception {
        return proviceService.update(dto);
    }

    @Override
    public Province searchProvince(int id) throws Exception {
        return proviceService.search(id);
    }

    @Override
    public List<Province> getAllCVList() throws Exception {
        return proviceService.getList();
    }

    @Override
    public List<Province> getListForQuery(String query) throws Exception {
        return proviceService.getListA(query);
    }

}
