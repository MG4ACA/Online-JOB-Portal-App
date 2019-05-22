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
import lk.ijse.mr.core.Rating;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Sanu
 */
@Controller
public class RatingsController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/addRags")
    public void addRatings(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        String pm = req.getParameter("id");
        Rating rating = user.getRating();
        if (rating != null) {
            try {
                if (pm.equals("rat1")) {
                    rating.setOneStar(rating.getOneStar() + 1);
                } else if (pm.equals("rat2")) {
                    rating.setTwoStar(rating.getTwoStar() + 1);
                } else if (pm.equals("rat3")) {
                    rating.setThreeStar(rating.getThreeStar() + 1);
                } else if (pm.equals("rat4")) {
                    rating.setFourStar(rating.getFourStar() + 1);
                } else if (pm.equals("rat5")) {
                    rating.setFiveStra(rating.getFiveStra() + 1);
                }
                rating.setRcount(rating.getRcount() + 1);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            try {
                Rating tempR = new Rating();
                if (pm.equals("rat1")) {
                    tempR.setOneStar(1);
                } else if (pm.equals("rat2")) {
                    tempR.setTwoStar(1);
                } else if (pm.equals("rat3")) {
                    tempR.setThreeStar(1);
                } else if (pm.equals("rat4")) {
                    tempR.setFourStar(1);
                } else if (pm.equals("rat5")) {
                    tempR.setFiveStra(1);
                }
                tempR.setRcount(1);
                user.setRating(tempR);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    @RequestMapping(value = "updateRatings")
    public String updateRatings(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteRatings")
    public String deleteRatings(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchRatings")
    public String searchRatings(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllRatings", produces = "application/json")
    public void getallRatings(HttpServletRequest req, HttpServletResponse resp) {
        try {
            User user = (User) req.getSession().getAttribute("cuser");
            Rating rating = user.getRating();
            if (rating != null) {
                Rating tempRating = new Rating();
                tempRating.setFiveStra(rating.getFiveStra());
                tempRating.setFourStar(rating.getFourStar());
                tempRating.setThreeStar(rating.getThreeStar());
                tempRating.setTwoStar(rating.getTwoStar());
                tempRating.setOneStar(rating.getOneStar());
                tempRating.setId(rating.getId());
                tempRating.setRcount(rating.getRcount());
                String toJson = new Gson().toJson(tempRating);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "getAllRating2", produces = "application/json")
    public void getallRatings2(HttpServletRequest req, HttpServletResponse resp) {
        try {
            User user = (User) req.getSession().getAttribute("seo");
            Rating rating = user.getRating();
            if (rating != null) {
                Rating tempRating = new Rating();
                tempRating.setFiveStra(rating.getFiveStra());
                tempRating.setFourStar(rating.getFourStar());
                tempRating.setThreeStar(rating.getThreeStar());
                tempRating.setTwoStar(rating.getTwoStar());
                tempRating.setOneStar(rating.getOneStar());
                tempRating.setId(rating.getId());
                tempRating.setRcount(rating.getRcount());
                String toJson = new Gson().toJson(tempRating);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "/addRags2")
    public void addRatings2(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("seo");
        String pm = req.getParameter("id");
        Rating rating = user.getRating();
        if (rating != null) {
            try {
                if (pm.equals("rat1")) {
                    rating.setOneStar(rating.getOneStar() + 1);
                } else if (pm.equals("rat2")) {
                    rating.setTwoStar(rating.getTwoStar() + 1);
                } else if (pm.equals("rat3")) {
                    rating.setThreeStar(rating.getThreeStar() + 1);
                } else if (pm.equals("rat4")) {
                    rating.setFourStar(rating.getFourStar() + 1);
                } else if (pm.equals("rat5")) {
                    rating.setFiveStra(rating.getFiveStra() + 1);
                }
                rating.setRcount(rating.getRcount() + 1);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            try {
                Rating tempR = new Rating();
                if (pm.equals("rat1")) {
                    tempR.setOneStar(1);
                } else if (pm.equals("rat2")) {
                    tempR.setTwoStar(1);
                } else if (pm.equals("rat3")) {
                    tempR.setThreeStar(1);
                } else if (pm.equals("rat4")) {
                    tempR.setFourStar(1);
                } else if (pm.equals("rat5")) {
                    tempR.setFiveStra(1);
                }
                tempR.setRcount(1);
                user.setRating(tempR);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(RatingsController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

}
