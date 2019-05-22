/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Rating;
import lk.ijse.mr.repository.RatingsRepository;
import lk.ijse.mr.service.RatingsService;
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
public class RatingsServiceImpl implements RatingsService {

    @Autowired
    private RatingsRepository ratingRepo;

    @Override
    public boolean addRatings(Rating dto) throws Exception {
        return ratingRepo.add(dto);
    }

    @Override
    public boolean deleteRatings(int id) throws Exception {
        return ratingRepo.delete(id);
    }

    @Override
    public boolean updateRatings(Rating dto) throws Exception {
        return ratingRepo.update(dto);
    }

    @Override
    public Rating searchRatings(int id) throws Exception {
        return ratingRepo.search(id);
    }

    @Override
    public List<Rating> getAllRatingsList() throws Exception {
        return ratingRepo.getList();
    }

    @Override
    public List<Rating> getListForQuery(String query) throws Exception {
        return ratingRepo.getListA(query);
    }

}
