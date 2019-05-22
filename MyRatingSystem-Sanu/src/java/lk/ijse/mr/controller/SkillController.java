/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Company;
import lk.ijse.mr.core.CompanySkills;
import lk.ijse.mr.core.Employee;
import lk.ijse.mr.core.Job;
import lk.ijse.mr.core.Skill;
import lk.ijse.mr.core.User;
import lk.ijse.mr.service.CompanyService;
import lk.ijse.mr.service.CompanySkillService;
import lk.ijse.mr.service.JobService;
import lk.ijse.mr.service.SkillService;
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
public class SkillController {

    @Autowired
    private UserService userService;

    @Autowired
    private CompanyService comService;

    @Autowired
    private SkillService skillSer;

    @Autowired
    private JobService jobService;

    @Autowired
    private CompanySkillService companySkill;

    @RequestMapping(value = "addSkill", method = RequestMethod.POST)
    public void addSkill(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            String skillName = req.getParameter("newski-name");
            int skillPresenatage = Integer.parseInt(req.getParameter("new-presge"));
            Skill tempSkill = new Skill();
            if (skillPresenatage <= 20) {
                tempSkill.setBclas("progress-bar-danger");
            } else if (skillPresenatage >= 21 && skillPresenatage <= 44) {
                tempSkill.setBclas("progress-bar-warning");
            } else if (skillPresenatage >= 45 && skillPresenatage <= 65) {
                tempSkill.setBclas("progress-bar-info");
            } else if (skillPresenatage >= 66 && skillPresenatage <= 75) {
                tempSkill.setBclas("progress-bar-primary");
            } else if (skillPresenatage >= 76 && skillPresenatage <= 100) {
                tempSkill.setBclas("progress-bar-success");
            }

            List<Skill> skills = skillSer.advancedSkillSearch(skillName.trim());
            if (!skills.isEmpty()) {
                Skill tt = null;
                for (Skill skill : skills) {
                    tt = skill;
                }
                user.getSkills().add(tt);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } else {
                if (skillName != null) {
                    tempSkill.setSkillName(skillName);
                    tempSkill.setSkillrate(skillPresenatage);

                    user.getSkills().add(tempSkill);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "updateSkill")
    public String updateSkill(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteSkill")
    public String deleteSkill(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "getASkills")
    public void searchSkill(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<Skill> skillList = new ArrayList<>();
            List<Skill> skills = skillSer.getAllSkillList();
            if (!skills.isEmpty()) {
                for (Skill skill : skills) {
                    Skill tempSkill = new Skill();
                    tempSkill.setBclas(skill.getBclas());
                    tempSkill.setSkillName(skill.getSkillName());
                    tempSkill.setSkillrate(skill.getSkillrate());
                    tempSkill.setId(skill.getId());
                    skillList.add(tempSkill);
                }

                String toJson = new Gson().toJson(skillList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "skcadvac")
    public void advancedSkillSearch(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String skillname = req.getParameter("skillcomp");
            ArrayList<Skill> skillList = new ArrayList<>();
            List<Skill> skills = skillSer.advancedSkillSearch(skillname);
            if (!skills.isEmpty()) {
                for (Skill skill : skills) {
                    Skill tempSkill = new Skill();
                    tempSkill.setBclas(skill.getBclas());
                    tempSkill.setSkillName(skill.getSkillName());
                    tempSkill.setSkillrate(skill.getSkillrate());
                    tempSkill.setId(skill.getId());
                    skillList.add(tempSkill);
                }

                String toJson = new Gson().toJson(skillList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "getAllSkill")
    public void getallSkill(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<Skill> skillList = new ArrayList<>();
            User user = (User) req.getSession().getAttribute("cuser");
            Set<Skill> skills = user.getSkills();
            if (!skills.isEmpty()) {
                for (Skill skill : skills) {
                    Skill tempSkill = new Skill();
                    tempSkill.setBclas(skill.getBclas());
                    tempSkill.setSkillName(skill.getSkillName());
                    tempSkill.setSkillrate(skill.getSkillrate());
                    tempSkill.setId(skill.getId());
                    skillList.add(tempSkill);
                }

                String toJson = new Gson().toJson(skillList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "sfsk", method = RequestMethod.POST)
    public void advancedch(HttpServletRequest req, HttpServletResponse resp) {
//            serch job from skill
        try {
            String qquery = req.getParameter("qq");
            resp.setContentType("application/json");
            ArrayList<Job> jobList = new ArrayList<Job>();
            List<Job> jobs = jobService.getJobList();
            String[] main = qquery.split(",");
            for (Job job : jobs) {
                String[] split = job.getRequiredSkills().split(",");
                for (String string : split) {
                    for (String strings : main) {
                        if (string.equals(strings)) {
                            Job jb = new Job();
                            jb.setJid(job.getJid());
                            jb.setJobBanner(job.getJobBanner());
                            jb.setJobDescription(job.getJobDescription());
                            jb.setRequiredSkills(job.getRequiredSkills());
                            jb.setRole(job.getRole());
                            jb.setSeniorityLevel(job.getSeniorityLevel());
                            jb.setTitle(job.getTitle());
                            jb.setPdate(job.getPdate());
                            if (!jobList.contains(job)) {
                                jobList.add(jb);
                            }
                        }
                    }
                }
            }
            String toJson = new Gson().toJson(jobList);
            resp.getWriter().write(toJson);

        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "sfsktt", method = RequestMethod.POST)
    public void advancedch2t(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String qquery = req.getParameter("qq");
            resp.setContentType("application/json");
            ArrayList<User> allSearch = new ArrayList<User>();
            List<User> userList = userService.getUserList();
            if (!userList.isEmpty()) {
                for (User user : userList) {
                    Set<Skill> skills = user.getSkills();
                    for (Skill skill : skills) {
                        String[] split = qquery.split(",");
                        for (String string : split) {
                            if (skill.getSkillName().equals(string.trim())) {
                                User dto = new User();
                                dto.setFirstName(user.getFirstName());
                                dto.setLastName(user.getLastName());
                                dto.setId(user.getId());
                                dto.setCf(user.getCf());
                                dto.setEmail(user.getEmail());
                                dto.setCountry(user.getCountry());
                                dto.setPostalcode(user.getPostalcode());
                                dto.setTp(user.getTp());
                                allSearch.add(dto);
//                                if (!allSearch.isEmpty()) {
//                                    for (User user1 : allSearch) {
//                                        if (!user1.getEmail().equals(user.getEmail())) {
//                                            allSearch.add(dto);
//                                        }
//                                    }
//
//                                } else {
//                                    allSearch.add(dto);
//                                }
                            }
                        }
                    }
                }

                String toJson = new Gson().toJson(allSearch);
                resp.getWriter().write(toJson);
            }
        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "sfsktter", method = RequestMethod.POST)
    public void advancedch2ter(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String qquery = req.getParameter("qq");
            String qquery2 = req.getParameter("qq2");
            resp.setContentType("application/json");
            ArrayList<User> allSearch = new ArrayList<User>();
            Company comm = comService.searchByNameSkill(qquery2);
            Set<Employee> employyes = comm.getEmployyes();
            for (Employee emp : employyes) {
                User user = emp.getEmployees();
                Set<Skill> skills = user.getSkills();
                for (Skill skill : skills) {
                    String[] split = qquery.split(",");
                    for (String string : split) {
                        if (skill.getSkillName().equals(string.trim())) {
                            User dto = new User();
                            dto.setFirstName(user.getFirstName());
                            dto.setLastName(user.getLastName());
                            dto.setId(user.getId());
                            dto.setCf(user.getCf());
                            dto.setEmail(user.getEmail());
                            dto.setCountry(user.getCountry());
                            dto.setPostalcode(user.getPostalcode());
                            dto.setTp(user.getTp());
                            allSearch.add(dto);
//                                if (!allSearch.isEmpty()) {
//                                    for (User user1 : allSearch) {
//                                        if (!user1.getEmail().equals(user.getEmail())) {
//                                            allSearch.add(dto);
//                                        }
//                                    }
//
//                                } else {
//                                    allSearch.add(dto);
//                                }
                        }
                    }
                }
            }

            String toJson = new Gson().toJson(allSearch);
            resp.getWriter().write(toJson);

        } catch (IOException ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @RequestMapping(value = "skillser1", method = RequestMethod.POST)
    public void advancedcdfhs(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String qquery = req.getParameter("qq");
            String com = req.getParameter("qq2");
            resp.setContentType("application/json");
            ArrayList<Job> jobList = new ArrayList<Job>();
            Company company = comService.searchByNameSkill(com);
            Set<CompanySkills> features = company.getFeatures();
            Set<Job> jobs = company.getJobs();
            String[] main = qquery.split(",");
            for (Job job : jobs) {
                String[] split = job.getRequiredSkills().split(",");
                for (String string : split) {
                    for (String strings : main) {
                        if (string.equals(strings)) {
                            Job jb = new Job();
                            jb.setJid(job.getJid());
                            jb.setJobBanner(job.getJobBanner());
                            jb.setJobDescription(job.getJobDescription());
                            jb.setRequiredSkills(job.getRequiredSkills());
                            jb.setRole(job.getRole());
                            jb.setSeniorityLevel(job.getSeniorityLevel());
                            jb.setTitle(job.getTitle());
                            jb.setPdate(job.getPdate());
                            if (!jobList.contains(job)) {
                                jobList.add(jb);
                            }
                        }
                    }
                }
            }
            String toJson = new Gson().toJson(jobList);
            resp.getWriter().write(toJson);

        } catch (Exception ex) {
            Logger.getLogger(SkillController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
