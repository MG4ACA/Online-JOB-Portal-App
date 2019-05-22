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
import lk.ijse.mr.core.Friend;
import lk.ijse.mr.core.FriendCircle;
import lk.ijse.mr.core.Request;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.FriendService;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Sanu
 */
@Controller
public class FriendController {

    @Autowired
    private UserService userService;

    @Autowired
    private FriendService friendService;

    @RequestMapping(value = "addFriend")
    public void addFriend(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            int id = Integer.parseInt(req.getParameter("id"));
            User searchUser = userService.searchUser(id);
            Friend friends = user.getFriends();
            if (friends == null) {
                Friend f = new Friend();
                f.setDate("2017");
                user.setFriends(f);
                FriendCircle circle = new FriendCircle();
                circle.setCf(searchUser.getCf());
                circle.setCountry(searchUser.getCountry());
                circle.setEmail(searchUser.getEmail());
                circle.setFirstName(searchUser.getFirstName());
                circle.setLastName(searchUser.getLastName());
                circle.setPostalcode(searchUser.getPostalcode());
                circle.setProfileID(searchUser.getId());
                circle.setTp(searchUser.getTp());
                circle.setWp(searchUser.getWp());
                circle.setFriend(f);
                f.getFriendsCir().add(circle);

                Request t = new Request();
                t.setFrom(user.getFirstName());
                t.setRequest("Followed You..!");
                t.setType("Friend Req");
                resp.getWriter().print("true");
                searchUser.getReqDetail().add(t);

                friendService.addFriend(f);
                userService.updateUser(user);
                userService.updateUser(searchUser);
            } else {
                Set<FriendCircle> friendss = friends.getFriendsCir();
                boolean abc = false;
                for (FriendCircle friends1 : friendss) {
                    if (friends1.getProfileID() == id) {
                        abc = true;
                    }
                }
                if (!abc) {
                    FriendCircle circle = new FriendCircle();
                    circle.setCf(searchUser.getCf());
                    circle.setCountry(searchUser.getCountry());
                    circle.setEmail(searchUser.getEmail());
                    circle.setFirstName(searchUser.getFirstName());
                    circle.setLastName(searchUser.getLastName());
                    circle.setPostalcode(searchUser.getPostalcode());
                    circle.setProfileID(searchUser.getId());
                    circle.setTp(searchUser.getTp());
                    circle.setWp(searchUser.getWp());
                    friends.getFriendsCir().add(circle);
                    userService.updateUser(user);
                    resp.getWriter().print("true");
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(FriendController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "updateFriend")
    public String updateFriend(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteFriend")
    public String deleteFriend(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchFriend")
    public String searchFriend(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllFriend")
    public void getallFriend(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<FriendCircle> allFriends = new ArrayList<FriendCircle>();
            User user = (User) req.getSession().getAttribute("cuser");
            Friend friends = user.getFriends();
            if (friends != null) {
                Set<FriendCircle> friendsR = friends.getFriendsCir();

                if (!friendsR.isEmpty()) {
                    for (FriendCircle searchUser : friendsR) {
                        FriendCircle circle = new FriendCircle();
                        circle.setId(searchUser.getId());
                        circle.setCf(searchUser.getCf());
                        circle.setCountry(searchUser.getCountry());
                        circle.setEmail(searchUser.getEmail());
                        circle.setFirstName(searchUser.getFirstName());
                        circle.setLastName(searchUser.getLastName());
                        circle.setPostalcode(searchUser.getPostalcode());
                        circle.setProfileID(searchUser.getProfileID());
                        circle.setTp(searchUser.getTp());
                        circle.setWp(searchUser.getWp());
                        allFriends.add(circle);
                    }

                    String toJson = new Gson().toJson(allFriends);
                    resp.getWriter().write(toJson);
                }
            }

        } catch (IOException ex) {
            Logger.getLogger(FriendController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
