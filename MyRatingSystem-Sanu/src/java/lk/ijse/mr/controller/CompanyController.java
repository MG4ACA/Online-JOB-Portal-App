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
import lk.ijse.mr.core.UserDetail;
import lk.ijse.mr.service.CompanyService;
import lk.ijse.mr.service.CompanySkillService;
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
public class CompanyController {

    @Autowired
    private UserService userService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private SkillService skillSer;

    @Autowired
    private CompanySkillService comSkills;

    @RequestMapping(value = "addcompany")
    public void addCompany(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //get the current user
            User user = (User) req.getSession().getAttribute("cuser");
            String comName = req.getParameter("coName");
            String comTitle = req.getParameter("coTitle");
            String comDescription = req.getParameter("comDescription");
            String comSize = req.getParameter("comSize");
            String comWeb = req.getParameter("comWebsite");
            String yearFounded = req.getParameter("comYearOfFound");
            String comType = req.getParameter("comType");
            String comAddress = req.getParameter("comAddress");
            String comSkill = req.getParameter("skillcomp");

            Company compny = new Company();
            compny.setComName(comName);
            compny.setAddress(comAddress);
            compny.setAboutComp(comDescription);
            compny.setCompanySize(comSize);
            compny.setCompanytype(comType);
            compny.setFollowers(1);
            compny.setProfileP("pavatar.png");
            compny.setTitle(comTitle);
            compny.setWebsite(comWeb);
            compny.setYearfound(yearFounded);
            compny.setUser(user);
            String[] split = comSkill.split(",");
            for (String string : split) {
                if (string != null) {
                    CompanySkills ss = new CompanySkills();
                    ss.setSkillName(string);
                    compny.getFeatures().add(ss);

                }
            }
            user.getCompany().add(compny);
            boolean updateUser = userService.updateUser(user);
            resp.getWriter().print(updateUser);

        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "getAllC")
    public void getallCompa(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<Company> allList = companyService.getCompanyList();
            ArrayList<Company> editList = new ArrayList<Company>();
            for (Company company1 : allList) {
                Company temp = new Company();
                temp.setAboutComp(company1.getAboutComp());
                temp.setAddress(company1.getAddress());
                temp.setComName(company1.getComName());
                temp.setCompanySize(company1.getCompanySize());
                temp.setCompanytype(company1.getCompanytype());
                temp.setFollowers(company1.getFollowers());
                temp.setProfileP(company1.getProfileP());
                temp.setTitle(company1.getTitle());
                temp.setWebsite(company1.getWebsite());
                temp.setYearfound(company1.getYearfound());
                temp.setId(company1.getId());
                editList.add(temp);
            }
            String toJson = new Gson().toJson(editList);
            resp.getWriter().write(toJson);
        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "updateCpy")
    public String updateCompany(HttpServletRequest req, HttpServletResponse resp) {

        return "update";
    }

    @RequestMapping(value = "deleteCpy")
    public String deleteCompany(HttpServletRequest req, HttpServletResponse resp) {

        return "delete";
    }

    @RequestMapping(value = "searchCpy")
    public void searchCompany(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String cname = req.getParameter("cname");
            List<Company> allList = companyService.searchByName(cname);
            ArrayList<Company> editList = new ArrayList<Company>();
            for (Company company1 : allList) {
                Company temp = new Company();
                temp.setAboutComp(company1.getAboutComp());
                temp.setAddress(company1.getAddress());
                temp.setComName(company1.getComName());
                temp.setCompanySize(company1.getCompanySize());
                temp.setCompanytype(company1.getCompanytype());
                temp.setFollowers(company1.getFollowers());
                temp.setProfileP(company1.getProfileP());
                temp.setTitle(company1.getTitle());
                temp.setWebsite(company1.getWebsite());
                temp.setYearfound(company1.getYearfound());
                temp.setId(company1.getId());
                editList.add(temp);
            }
            String toJson = new Gson().toJson(editList);
            resp.getWriter().write(toJson);
        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "searchCpyski")
    public void searchCompanyskill(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String cname = req.getParameter("cname");
            Company company1 = companyService.searchByNameSkill(cname);
            System.out.println("//////////////////////////////////" + company1.getComName());
            ArrayList<CompanySkills> editList = new ArrayList<CompanySkills>();
            Set<CompanySkills> features = company1.getFeatures();
            System.out.println("//////////////////////////////////" + features.size());
            if (!features.isEmpty()) {
                for (CompanySkills feature : features) {
                    CompanySkills temp = new CompanySkills();
                    temp.setId(feature.getId());
                    temp.setSkillName(feature.getSkillName());
                    temp.setSkillrate(feature.getSkillrate());
                    editList.add(temp);
                }
                String toJson = new Gson().toJson(editList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "getAllCpy")
    public void getallCompany(HttpServletRequest req, HttpServletResponse resp) {
        try {
            ArrayList<Company> editList = new ArrayList<Company>();
            User user = (User) req.getSession().getAttribute("cuser");
            Set<Company> company = user.getCompany();
            if (!company.isEmpty()) {
                for (Company company1 : company) {
                    Company temp = new Company();
                    temp.setAboutComp(company1.getAboutComp());
                    temp.setAddress(company1.getAddress());
                    temp.setComName(company1.getComName());
                    temp.setCompanySize(company1.getCompanySize());
                    temp.setCompanytype(company1.getCompanytype());
                    temp.setFollowers(company1.getFollowers());
                    temp.setProfileP(company1.getProfileP());
                    temp.setTitle(company1.getTitle());
                    temp.setWebsite(company1.getWebsite());
                    temp.setYearfound(company1.getYearfound());
                    temp.setId(company1.getId());
                    editList.add(temp);
                }
                String toJson = new Gson().toJson(editList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "searchCpyaJ")
    public void searchCompanyNa(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String cname = req.getParameter("cname");
            Company searchByNameSkill = companyService.searchByNameSkill(cname);
            System.out.println("//////////////////////////////////" + searchByNameSkill.getComName());
            ArrayList<Job> editList = new ArrayList<Job>();
            Set<Job> jobs = searchByNameSkill.getJobs();
            if (!jobs.isEmpty()) {
                for (Job job : jobs) {
                    Job temp = new Job();
                    temp.setJid(job.getJid());
                    temp.setJobBanner(job.getJobBanner());
                    temp.setJobDescription(job.getJobDescription());
                    temp.setPdate(job.getPdate());
                    temp.setRequiredSkills(job.getRequiredSkills());
                    temp.setRole(job.getRole());
                    temp.setSeniorityLevel(job.getSeniorityLevel());
                    temp.setTitle(job.getTitle());
                    editList.add(temp);
                }
                String toJson = new Gson().toJson(editList);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "searchCcc")
    public void searcEmplo(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String cname = req.getParameter("cname");
            Company searchByNameSkill = companyService.searchByNameSkill(cname);
            ArrayList<User> editList = new ArrayList<User>();
            Set<Employee> employyes = searchByNameSkill.getEmployyes();
            for (Employee employye : employyes) {
                User ust = employye.getEmployees();
                User temp = new User();
                temp.setCf(ust.getCf());
                temp.setCountry(ust.getCountry());
                temp.setEmail(ust.getEmail());
                temp.setFirstName(ust.getFirstName());
                temp.setId(ust.getId());
                temp.setLastName(ust.getLastName());
                temp.setPossition(ust.getPossition());
                temp.setPostalcode(ust.getPostalcode());
                editList.add(temp);
            }
            String toJson = new Gson().toJson(editList);
            resp.getWriter().write(toJson);

        } catch (IOException ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @RequestMapping(value = "workingPlace", method = RequestMethod.POST)
    public void addWorkingC(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String workingPlace = req.getParameter("wplace");
            Company comp = companyService.searchByNameSkill(workingPlace);
            User user = (User) req.getSession().getAttribute("cuser");
            Employee e = new Employee();
            e.setEmployees(user);
            comp.getEmployyes().add(e);
            companyService.updateCompany(comp);

        } catch (IOException ex) {
            Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(CompanyController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
