/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Sanu
 */
@Controller
public class RequestController {

    @RequestMapping(value = "addReq")
    public String addRequest(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        return "aded";
    }

    @RequestMapping(value = "updateReq")
    public String updateRequest(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteReq")
    public String deleteRequest(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchReq")
    public String searchRequest(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllReq")
    public String getallRequest(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

}
