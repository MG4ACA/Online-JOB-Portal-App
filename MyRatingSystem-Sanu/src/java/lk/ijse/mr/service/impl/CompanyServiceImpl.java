/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Company;
import lk.ijse.mr.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lk.ijse.mr.repository.CompanyRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyDAO;

    @Override
    public boolean addCompany(Company dto) throws Exception {
        return companyDAO.add(dto);
    }

    @Override
    public boolean deleteCompany(int id) throws Exception {
        return companyDAO.delete(id);
    }

    @Override
    public boolean updateCompany(Company dto) throws Exception {
        return companyDAO.update(dto);
    }

    @Override
    public Company searchCompany(int id) throws Exception {
        return companyDAO.search(id);
    }

    @Override
    public List<Company> getCompanyList() throws Exception {
        return companyDAO.getList();
    }

    @Override
    public List<Company> searchByName(String name) throws Exception {
        return companyDAO.searchByName(name);
    }

    @Override
    public Company searchByNameSkill(String name) throws Exception {
        return companyDAO.searchByNS(name);
    }

    @Override
    public List<Company> getListForQuery(String query) throws Exception {
         return companyDAO.getListA(query);
    }

    @Override
    public boolean merge(Company dto) throws Exception {
        return companyDAO.merge(dto);
    }

   

}
