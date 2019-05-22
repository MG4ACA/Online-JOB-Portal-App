/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Friend;
import lk.ijse.mr.core.User;
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
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String showIndex() {
        return "index";
    }

    @RequestMapping("/dashboard.htm")
    public String showLog() {
        return "dashboard";
    }

    @RequestMapping("/company")
    public String viewCIndex() {
        return "company";
    }

    @RequestMapping("/interview")
    public String viewIIndex() {
        return "interview";
    }

    @RequestMapping("/jobs")
    public String viewJIndex() {
        return "jobs";
    }

    @RequestMapping("/message")
    public String viewmIndex() {
        return "message";
    }

    @RequestMapping("/network")
    public String viewmnIndex() {
        return "mynetwork";
    }

    @RequestMapping("/profile")
    public String viewmpIndex() {
        return "myprofile";
    }

    @RequestMapping("/notification")
    public String viewnfIndex() {
        return "notification";
    }

    @RequestMapping("/settings")
    public String viewnsfIndex() {
        return "settings";
    }

    @RequestMapping("/views")
    public String viewnveIndex() {
        return "views";
    }

    @RequestMapping(value = "/log.htm", method = RequestMethod.POST)
    public String checkForLoging(HttpServletRequest req) {
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        try {
            User searchForLogin = userService.searchForLogin(email, pass);
            if (searchForLogin != null) {
                req.getSession().setAttribute("cuser", searchForLogin);
                Friend friends = searchForLogin.getFriends();
                if (friends != null) {
                    int size = friends.getFriendsCir().size();
                    req.getSession().setAttribute("fol", size);
                } else {
                    req.getSession().setAttribute("fol", 0);
                }
                return "dashboard";
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "index";
    }

    @RequestMapping(value = "/logoff.htm", method = RequestMethod.GET)
    public String logOffSession(HttpServletRequest req) {
        req.getSession().invalidate();
        return "index";
    }

    @RequestMapping(value = "/search")
    public String viewseIndex(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            User searchUser = userService.searchUser(id);
            if (searchUser != null) {
                req.getSession().setAttribute("seo", searchUser);
                return "usersearch";
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "dashboard";
    }

}
