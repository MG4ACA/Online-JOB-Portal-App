/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lk.ijse.mr.core.CV;
import lk.ijse.mr.core.User;
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
public class CVController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "/cvadd", method = RequestMethod.POST)
    public void viewIndex(@RequestParam(value = "cvupload") MultipartFile cvupload, HttpServletRequest req, HttpServletResponse resp) {
        try {
            String realPath = req.getServletContext().getRealPath("/resources/cvs");
            String originalFilename = cvupload.getOriginalFilename();
            String rrPath = realPath + File.separator + originalFilename;
            File out = new File(rrPath);
            out.createNewFile();
            FileOutputStream outS = new FileOutputStream(out);
            InputStream inputStream = cvupload.getInputStream();
            int read = 0;
            byte[] buffer = new byte[1024];
            while ((read = inputStream.read(buffer, 0, buffer.length)) != -1) {
                outS.write(buffer, 0, buffer.length);
            }
            //    adiing to the database
            User user = (User) req.getSession().getAttribute("cuser");
            CV temp = new CV();
            temp.setCf(originalFilename);
            user.setCv(temp);
            boolean updateUser = userService.updateUser(user);
            if (updateUser) {
                req.getSession().setAttribute("cuser", user);
            }
            resp.getWriter().print(updateUser);
        } catch (IOException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        }
//        return "myprofile";

    }
    
    @RequestMapping(value = "/loadcv")
    public void loadMyCv(HttpServletRequest req, HttpServletResponse resp) {
        FileInputStream fis = null;
        ServletOutputStream sos = null;
        try {
            User user = (User) req.getSession().getAttribute("cuser");
            CV cv = user.getCv();
            String cf = cv.getCf();
            resp.setContentType("application/pdf");
            sos = resp.getOutputStream();
            String realPath = req.getServletContext().getRealPath("/resources/cvs/" + cf + "");
            File f = new File(realPath);
            fis = new FileInputStream(f);
            int i = 0;
            byte[] bytes = new byte[1024];
            while ((i = fis.read(bytes, 0, bytes.length)) != -1) {
                sos.write(bytes, 0, bytes.length);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
                sos.close();
            } catch (IOException ex) {
                Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }
    
    @RequestMapping(value = "/callme", method = RequestMethod.POST)
    public void liveCalling(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ServletInputStream is = req.getInputStream();
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            
            int nRead;
            byte[] data = new byte[16384];
            
            while ((nRead = is.read(data, 0, data.length)) != -1) {
                buffer.write(data, 0, nRead);
            }
            buffer.flush();            
            
            String toJson = new Gson().toJson(buffer.toByteArray());
            resp.getWriter().write(toJson);
        } catch (IOException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @RequestMapping(value = "/getCall")
    public void livegetCalling(HttpServletRequest req, HttpServletResponse resp) {
        try {
            InputStream is = req.getInputStream();
            byte[] bt = new byte[1000];
            is.read(bt);
            String reqe = new String(bt);
            HttpSession session = req.getSession();
            byte[] attribute = (byte[]) session.getAttribute("s");
            resp.getWriter().print(attribute);
            
        } catch (IOException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @RequestMapping(value = "/loadcv2")
    public void loadMyCv2(HttpServletRequest req, HttpServletResponse resp) {
        FileInputStream fis = null;
        ServletOutputStream sos = null;
        try {
            User user = (User) req.getSession().getAttribute("seo");
            CV cv = user.getCv();
            String cf = cv.getCf();
            resp.setContentType("application/pdf");
            sos = resp.getOutputStream();
            String realPath = req.getServletContext().getRealPath("/resources/cvs/" + cf + "");
            File f = new File(realPath);
            fis = new FileInputStream(f);
            int i = 0;
            byte[] bytes = new byte[1024];
            while ((i = fis.read(bytes, 0, bytes.length)) != -1) {
                sos.write(bytes, 0, bytes.length);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
                sos.close();
            } catch (IOException ex) {
                Logger.getLogger(CVController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }
    
}
