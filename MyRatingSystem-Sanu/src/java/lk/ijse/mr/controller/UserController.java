/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lk.ijse.mr.core.Country;
import lk.ijse.mr.core.Friend;
import lk.ijse.mr.core.FriendCircle;
import lk.ijse.mr.core.Notification;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.CountryService;
import lk.ijse.mr.service.NotificationService;
import lk.ijse.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Sanu
 */
@Controller
public class UserController {
    
    @Autowired
    private CountryService countryService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private NotificationService notificationService;
    
    @RequestMapping(value = "/add.htm", method = RequestMethod.POST)
    public String AddUser(HttpServletRequest req) {
        try {
            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String email = req.getParameter("email");
            String pass = req.getParameter("pass");
            String tp = req.getParameter("tp");
            String pc = req.getParameter("pc");
            String country = req.getParameter("ctry");
            String posss = req.getParameter("posi");
            
            User dto = new User();
            HttpSession session = req.getSession();
            dto.setFirstName(fname);
            dto.setLastName(lname);
            dto.setPassword(pass);
            dto.setEmail(email);
            dto.setCountry(tp);
            dto.setPostalcode(pc);
            dto.setTp(tp);
            dto.setCf("pavatar.png");
            dto.setWp("wallAvatar.jpg");
            dto.setCountry(country);
            dto.setPossition(posss);
            
            Country searchCountryByName = countryService.searchCountryByName(country.trim());
            if (searchCountryByName != null) {
                dto.setMyContry(searchCountryByName);
            } else {
                
            }
            
            boolean addUser = userService.addUser(dto);
            if (addUser) {
                req.getSession().setAttribute("fol", 0);
                session.setAttribute("cuser", dto);
            }
            try {
                
            } catch (Exception ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "dashboard";
    }
    
    @RequestMapping(value = "updateUser")
    public void updateUser(HttpServletRequest req, HttpServletResponse resp) {
        
    }
    
    @RequestMapping(value = "deleteUser")
    public String deleteUser(HttpServletRequest req, HttpServletResponse resp) {
        
        return "delete";
    }
    
    @RequestMapping(value = "getAllUser")
    public void getallUser(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<User> allSearch = new ArrayList<User>();
            resp.setContentType("application/json");
            List<User> userList = userService.getUserList();
            if (!userList.isEmpty()) {
                for (User user : userList) {
                    User dto = new User();
                    HttpSession session = req.getSession();
                    dto.setFirstName(user.getFirstName());
                    dto.setLastName(user.getLastName());
                    dto.setId(user.getId());
                    dto.setCf(user.getCf());
                    dto.setEmail(user.getEmail());
                    dto.setCountry(user.getCountry());
                    dto.setPostalcode(user.getPostalcode());
                    dto.setTp(user.getTp());
                    allSearch.add(dto);
                }
                String toJson = new Gson().toJson(allSearch);
                resp.getWriter().write(toJson);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @RequestMapping(value = "advSerch", method = RequestMethod.POST)
    public void searchAdvanceUser(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.setContentType("application/json");
            ArrayList<User> allSearch = new ArrayList<User>();
            String name = req.getParameter("search-text");
            User cuUser = (User) req.getSession().getAttribute("cuser");
            List<User> advancedSearch = userService.advancedSearch(name);
            
            for (User user : advancedSearch) {
                if (user.getId() != cuUser.getId()) {
                    User dto = new User();
                    HttpSession session = req.getSession();
                    dto.setFirstName(user.getFirstName());
                    dto.setLastName(user.getLastName());
                    dto.setId(user.getId());
                    dto.setEmail(user.getEmail());
                    dto.setCountry(user.getCountry());
                    dto.setPostalcode(user.getPostalcode());
                    dto.setTp(user.getTp());
                    allSearch.add(dto);
                }
                
            }
            
            String toJson = new Gson().toJson(allSearch);
            resp.getWriter().write(toJson);
            
        } catch (Exception ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @RequestMapping(value = "getMyFriend")
    public void getallF(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<FriendCircle> allSearch = new ArrayList<FriendCircle>();
            resp.setContentType("application/json");
            User cuUser = (User) req.getSession().getAttribute("cuser");
            Friend friends = cuUser.getFriends();
            if (friends != null) {
                Set<FriendCircle> friendsCir = friends.getFriendsCir();
                if (!friendsCir.isEmpty()) {
                    for (FriendCircle user : friendsCir) {
                        FriendCircle dto = new FriendCircle();
                        dto.setFirstName(user.getFirstName());
                        dto.setLastName(user.getLastName());
                        dto.setId(user.getId());
                        dto.setCf(user.getCf());
                        dto.setEmail(user.getEmail());
                        dto.setCountry(user.getCountry());
                        dto.setPostalcode(user.getPostalcode());
                        dto.setTp(user.getTp());
                        allSearch.add(dto);
                    }
                    String toJson = new Gson().toJson(allSearch);
                    resp.getWriter().write(toJson);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @RequestMapping(value = "changepp", method = RequestMethod.POST)
    public void changeProfile(@RequestParam(value = "ppup") MultipartFile ppup, HttpServletRequest req, HttpServletResponse resp) {
        try {
            InputStream in = ppup.getInputStream();
            String realPath = req.getServletContext().getRealPath("/resources/profile");
            String outPath = realPath + File.separator + ppup.getOriginalFilename();
            User cuUser = (User) req.getSession().getAttribute("cuser");
            
            cuUser.setCf(ppup.getOriginalFilename());
            
            File outf = new File(outPath);
            outf.createNewFile();
            FileOutputStream out = new FileOutputStream(outf);
            int i = 0;
            while ((i = in.read()) != -1) {
                out.write(i);
            }
            boolean updateUser = userService.updateUser(cuUser);
            resp.getWriter().print(updateUser);
            
        } catch (Exception ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
