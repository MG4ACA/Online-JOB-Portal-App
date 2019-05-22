/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.core.Notification;
import lk.ijse.mr.core.User;
import lk.ijse.mr.other.InterviewAccsept;
import lk.ijse.mr.service.JobService;
import lk.ijse.mr.service.NotificationService;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Sanu
 */
@Controller
public class NotificationController {

    @Autowired
    private UserService userService;

    @Autowired
    private JobService jobService;

    @Autowired
    private NotificationService nService;

    @RequestMapping(value = "loadInterr")
    public void getNottii(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //get the current user
            resp.setContentType("application/json");
            int nid = Integer.parseInt(req.getParameter("nid"));
            Notification searchNotification = nService.searchNotification(nid);
            int opId = searchNotification.getOpId();
            String[] split = searchNotification.getDate().split(",");
            InterviewAccsept acc = new InterviewAccsept();
            String date = split[0];
            String time = split[1];
                acc.setInterTime(time);
                acc.setInterdate(date);
            
            User searchUser = userService.searchUser(opId);
            Job searchJob = jobService.searchJob(searchNotification.getOpId2());

            acc.setInterID(searchNotification.getOptiona2());
            acc.setInterName(searchUser.getFirstName() + " " + searchUser.getLastName());

            acc.setJid(searchNotification.getOpId2());
            acc.setMessage(searchNotification.getOptional());
            acc.setJobTit(searchJob.getTitle());

            String toJson = new Gson().toJson(acc);
            resp.getWriter().write(toJson);
        } catch (IOException ex) {
            Logger.getLogger(NotificationController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(NotificationController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "updateNtyf")
    public String updateNotication(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteNtyf")
    public String deleteNotication(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchNtyf")
    public String searchNotication(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllNtyf")
    public String getallNotication(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getMyAllNoty")
    public void getMallNotication(HttpServletRequest req, HttpServletResponse resp) {

    }

    @RequestMapping(value = "getMyAlerts")
    public void updateInterview(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.setContentType("application/json");
            ArrayList<Notification> allNot = new ArrayList<Notification>();
            User cuUser = (User) req.getSession().getAttribute("cuser");
            Set<Notification> notyDe = cuUser.getNotyDe();
            for (Notification notification : notyDe) {
                Notification temp = new Notification();
                temp.setNid(notification.getNid());
                temp.setDate(notification.getDate());
                temp.setNotMessage(notification.getNotMessage());
                temp.setOpId(notification.getOpId());
                temp.setOpId2(notification.getOpId2());
                temp.setOptiona2(notification.getOptiona2());
                temp.setOptional(notification.getOptional());
                temp.setRead(notification.getRead());
                temp.setNtype(notification.getNtype());
                temp.setReqornot(notification.getReqornot());
                allNot.add(temp);
            }
            String toJson = new Gson().toJson(allNot);
            resp.getWriter().write(toJson);
        } catch (Exception ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
