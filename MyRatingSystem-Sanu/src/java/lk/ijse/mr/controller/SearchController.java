/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Company;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.core.User;
import lk.ijse.mr.core.UserDetail;
import lk.ijse.mr.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Sanu
 */
@Controller
public class SearchController {

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "getAllUsersDe1")
    public void getallRatingsForSearch(HttpServletRequest req, HttpServletResponse resp) {
        try {
            User user = (User) req.getSession().getAttribute("seo");
            UserDetail userDetail = user.getUserDetai();
            if (userDetail != null) {
                UserDetail tempUserDe = new UserDetail();
                tempUserDe.setCourse(userDetail.getCourse());
                tempUserDe.setCertification(userDetail.getCertification());
                tempUserDe.setDegree_Year(userDetail.getDegree_Year());
                tempUserDe.setKeyExpertise(userDetail.getKeyExpertise());
                tempUserDe.setLanguages(userDetail.getLanguages());
                tempUserDe.setSummery1(userDetail.getSummery1());
                tempUserDe.setSummery2(userDetail.getSummery2());
                tempUserDe.setResearchInterests(userDetail.getResearchInterests());
                tempUserDe.setPriorExperiences(userDetail.getPriorExperiences());
                tempUserDe.setProject(userDetail.getProject());

                String toJson = new Gson().toJson(tempUserDe);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "jbview")
    public String viewJBIndex(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Job hhh = jobService.searchJob(id);
            req.setAttribute("job", hhh);
            Company cm = hhh.getComDetails();
            req.setAttribute("comma", cm);
            User us = cm.getUser();

            req.setAttribute("oun", us);
        } catch (Exception ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "jobview";
    }
}
