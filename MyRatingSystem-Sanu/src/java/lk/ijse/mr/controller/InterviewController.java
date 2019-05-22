/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Company;
import lk.ijse.mr.core.Interview;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.core.Notification;
import lk.ijse.mr.core.User;
import lk.ijse.mr.other.TempUJob;
import lk.ijse.mr.service.JobService;
import lk.ijse.mr.service.NotificationService;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Sanu
 */
@Controller
public class InterviewController {

    @Autowired
    private NotificationService nService;

    @Autowired
    private UserService userService;

    @Autowired
    private JobService jbService;

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "addAlert")
    public void addInterview(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //first alret fot the job owner from client
            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            int jid = Integer.parseInt(req.getParameter("jid"));

            Job searchJob = jbService.searchJob(jid);
            Company comDeta = searchJob.getComDetails();
            User user1 = comDeta.getUser();
            Notification temp1 = new Notification();
            Date d = new Date();
            SimpleDateFormat simple = new SimpleDateFormat("yyyy.MM.dd 'at' HH:mm:ss a");
            String format = simple.format(d);
            temp1.setDate(format);
            temp1.setNotMessage(user.getFirstName() + " " + user.getLastName() + " Applied For Your Job..");
            temp1.setRead("false");
            temp1.setOpId(jid);
            temp1.setOpId2(user.getId());//sender id          
            temp1.setUser(user1);
            temp1.setReqornot("yes");
            temp1.setNtype("inter");
            user1.getNotyDe().add(temp1);
            boolean updateUser = userService.updateUser(user1);

            resp.getWriter().print(updateUser);

        } catch (Exception ex) {
            Logger.getLogger(InterviewController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "loadInteri")
    public void addNotication(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //get the current user
            resp.setContentType("application/json");
            int jid = Integer.parseInt(req.getParameter("jid"));
            int uid = Integer.parseInt(req.getParameter("uid"));
            Job searchJob = jobService.searchJob(jid);
            User searchUser = userService.searchUser(uid);

            TempUJob temp = new TempUJob();
            temp.setId(searchUser.getId());
            temp.setJid(searchJob.getJid());
            temp.setCf(searchUser.getCf());
            temp.setCountry(searchUser.getCountry());
            temp.setEmail(searchUser.getEmail());
            temp.setFirstName(searchUser.getFirstName());
            temp.setLastName(searchUser.getLastName());
            temp.setPostalcode(searchUser.getPostalcode());
            temp.setTp(searchUser.getTp());
            temp.setWp(searchUser.getWp());
            temp.setPossition(searchUser.getPossition());
            temp.setJobBanner(searchJob.getJobBanner());
            temp.setJobDescription(searchJob.getJobDescription());
            temp.setPdate(searchJob.getPdate());
            temp.setRequiredSkills(searchJob.getRequiredSkills());
            temp.setRole(searchJob.getRole());
            temp.setSeniorityLevel(searchJob.getSeniorityLevel());
            temp.setTitle(searchJob.getTitle());

            String toJson = new Gson().toJson(temp);
            resp.getWriter().write(toJson);
        } catch (IOException ex) {
            Logger.getLogger(NotificationController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(NotificationController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "InviteForInterview", method = RequestMethod.POST)
    public void updateInterview(HttpServletRequest req, HttpServletResponse resp) {
        //accsept the clients req
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            int jid = Integer.parseInt(req.getParameter("jid"));
            int nid = Integer.parseInt(req.getParameter("nnid"));
            String message = req.getParameter("new_message");
            String date = req.getParameter("idate");
            String intercallI = req.getParameter("intervId");
            String time = req.getParameter("itime");
            User userzz = (User) req.getSession().getAttribute("cuser");
            System.out.println("/////////1" + id);
            System.out.println("/////////2" + jid);
            System.out.println("/////////3" + nid);
            System.out.println("/////////4" + message);
            System.out.println("/////////5" + date);
            System.out.println("/////////6" + intercallI);
            System.out.println("/////////7" + time);
            System.out.println("/////////8"+userzz.getFirstName());
            Job searchJob = jbService.searchJob(jid);//owners job
            System.out.println("///baba////////////" + searchJob.getTitle());
            Company comDetails = searchJob.getComDetails();
            User user = comDetails.getUser();

            int id1 = user.getId();
            User searchUser = userService.searchUser(id);//applicant

            Interview inrt = new Interview();
            inrt.setOther("pc2");
            inrt.setReq("");

            searchJob.getInterview().add(inrt);
            jbService.updateJob(searchJob);
            searchUser.getInterview().add(inrt);
            userService.updateUser(searchUser);

            Notification temp = new Notification();
            temp.setDate(date + "," + time);
            temp.setNotMessage("Your Job Invitation Was Accsepted");
            temp.setOpId(id1);//job owner id
            temp.setOpId2(searchJob.getJid());//job id
            temp.setOptiona2(intercallI);
            temp.setOptional(message);
            temp.setRead("false");
            temp.setUser(searchUser);
            temp.setNtype("inter");
            temp.setReqornot("no");

//            code for the 
            searchUser.getNotyDe().add(temp);
            boolean updateUser = userService.updateUser(searchUser);
            if (updateUser) {
                Notification searchNotification = nService.searchNotification(nid);
                searchNotification.setRead("true");
                nService.updateNotification(searchNotification);
                resp.getWriter().write("true");
            }

        } catch (Exception ex) {
            Logger.getLogger(InterviewController.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "deleteInterview")
    public String deleteInterview(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchInterview")
    public String searchInterview(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllInterview")
    public String getallInterview(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

}
