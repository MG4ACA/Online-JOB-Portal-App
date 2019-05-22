/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Company;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.CompanyService;
import lk.ijse.mr.service.JobService;
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
public class JobController {

    @Autowired
    private UserService uesrService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "addJobs", method = RequestMethod.POST)
    public void addJob(@RequestParam(value = "jbup") MultipartFile banner, HttpServletRequest req, HttpServletResponse resp) {
        try {
            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            BufferedImage bi = null;
            Date d = new Date();
            SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd 'at' HH:mm:ss a");
            String format = df.format(d);

            String realPath = req.getServletContext().getRealPath("/resources/wallpics/job");
            String originalFilename = banner.getOriginalFilename();
            String rrPath = realPath + File.separator + originalFilename;
            File out = new File(rrPath);
//            1080:1920
            out.createNewFile();
            FileOutputStream outS = new FileOutputStream(out);
            InputStream inputStream = banner.getInputStream();
            int read = 0;
            byte[] buffer = new byte[1024];
            while ((read = inputStream.read(buffer, 0, buffer.length)) != -1) {
                outS.write(buffer, 0, buffer.length);
            }

            String companyName = req.getParameter("coNamej");
            String jbanner = banner.getOriginalFilename();
            String rsSkills = req.getParameter("rskill");
            String role = req.getParameter("jrole");
            String jobdes = req.getParameter("joDes");
            String jobTitle = req.getParameter("jtitle");
            String slevel = req.getParameter("slevel");

            String[] split = companyName.split(":");
            String ide = split[0];
            int id = Integer.parseInt(ide.trim());
            Company selectedCom = null;
            Set<Company> company = user.getCompany();
            for (Company company1 : company) {
                if (company1.getId() == id) {
                    selectedCom = company1;
                }
            }

            Job newJob = new Job();
            newJob.setJobDescription(jobdes);
            newJob.setJobBanner(jbanner);
            newJob.setRole(role);
            newJob.setSeniorityLevel(slevel);
            newJob.setTitle(jobTitle);
            newJob.setRequiredSkills(rsSkills);
            newJob.setComDetails(selectedCom);
            newJob.setPdate(format);

            if (selectedCom != null) {
                selectedCom.getJobs().add(newJob);
            }

            File inputFile = new File(rrPath);
            BufferedImage inputImage = ImageIO.read(inputFile);

            // creates output image
            BufferedImage outputImage = new BufferedImage(1920,
                    1080, inputImage.getType());

            // scales the input image to the output image
            Graphics2D g2d = outputImage.createGraphics();
            g2d.drawImage(inputImage, 0, 0, 1920, 1080, null);
            g2d.dispose();

            // extracts extension of output file
            String formatName = rrPath.substring(rrPath
                    .lastIndexOf(".") + 1);

            // writes to output file
            ImageIO.write(outputImage, formatName, new File(rrPath));

            boolean updateUser = uesrService.updateUser(user);
            resp.getWriter().print("true");
        } catch (Exception ex) {
            Logger.getLogger(JobController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "updateJob")
    public String updateJob(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteJob")
    public String deleteJob(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchJob")
    public String searchJob(HttpServletRequest req, HttpServletResponse resp) {

        return "search";
    }

    @RequestMapping(value = "getAllJobs")
    public void getallJob(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.setContentType("application/json");
            ArrayList<Job> allJobs = new ArrayList<Job>();
            List<Job> jobList = jobService.getJobList();
            if (!jobList.isEmpty()) {
                for (Job job : jobList) {
                    Job jb = new Job();
                    jb.setJid(job.getJid());
                    jb.setJobBanner(job.getJobBanner());
                    jb.setJobDescription(job.getJobDescription());
                    jb.setRequiredSkills(job.getRequiredSkills());
                    jb.setRole(job.getRole());
                    jb.setSeniorityLevel(job.getSeniorityLevel());
                    jb.setTitle(job.getTitle());
                    jb.setPdate(job.getPdate());
                    allJobs.add(jb);
                }
                String toJson = new Gson().toJson(allJobs);
                resp.getWriter().write(toJson);
            }

        } catch (Exception ex) {
            Logger.getLogger(JobController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
