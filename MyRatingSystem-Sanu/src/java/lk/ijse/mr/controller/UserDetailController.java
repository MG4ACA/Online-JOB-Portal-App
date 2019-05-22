/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.ijse.mr.core.Skill;
import lk.ijse.mr.core.User;
import lk.ijse.mr.core.UserDetail;
import lk.ijse.mr.service.UserDetailService;
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
public class UserDetailController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDetailService userDetailService;

    @RequestMapping(value = "upSum", method = RequestMethod.POST)
    public void updateSumerry(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String parameter = req.getParameter("sum1");
        String parameter1 = req.getParameter("sum2");
        if (userDetai != null) {
            try {
                userDetai.setSummery1(parameter);
                userDetai.setSummery2(parameter1);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                UserDetail userDetail = new UserDetail();
                userDetail.setSummery1(parameter);
                userDetail.setSummery2(parameter1);
                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "updRea", method = RequestMethod.POST)
    public void updateReas(HttpServletRequest req, HttpServletResponse resp) {
        //String format process
        String mainSe = "/";
        String opSep = ",";
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String research = req.getParameter("reaser");
        if (userDetai != null) {
            try {
                userDetai.setResearchInterests(research);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                UserDetail userDetail = new UserDetail();
                userDetail.setResearchInterests(research);
                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "updExp", method = RequestMethod.POST)
    public void updateExp(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String compName = req.getParameter("eComName").trim();
        String exDesc = req.getParameter("ecDes").trim();
        //String format process
        String mainSe = "/";
        String opSep = ",";
        if (userDetai != null) {
            try {
                String expIn = userDetai.getPriorExperiences();
                if (expIn == null) {
                    String tempEdited = compName + opSep + exDesc + mainSe;
                    userDetai.setPriorExperiences(tempEdited);
                    boolean updateUser = userService.updateUser(user);
                } else {
                    String tempEdited = compName + opSep + exDesc + mainSe + expIn;
                    userDetai.setPriorExperiences(tempEdited);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                }

            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                UserDetail userDetail = new UserDetail();
                String tempEdited = compName + opSep + exDesc + mainSe;
                userDetail.setPriorExperiences(tempEdited);
                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "keyEx", method = RequestMethod.POST)
    public void updateKE(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String exper = req.getParameter("kexper");
        String mainSe = "/";
        String opSep = ",";

        if (userDetai != null) {
            String keyIn = userDetai.getKeyExpertise();
            try {
                if (keyIn != null) {
                    String edited = keyIn + mainSe + exper;
                    userDetai.setKeyExpertise(edited);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                } else {
                    String edited = exper + mainSe;
                    userDetai.setKeyExpertise(edited);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                }

            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                //String format process
                UserDetail userDetail = new UserDetail();
                userDetail.setKeyExpertise(exper + mainSe);

                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @RequestMapping(value = "updaEdu", method = RequestMethod.POST)
    public void updateEdu(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String degree = req.getParameter("degree");
        String year = req.getParameter("year");
        if (userDetai != null) {
            try {
                String dig_year_in = userDetai.getDegree_Year();
                if (dig_year_in != null) {
                    //String format process
                    String mainSe = "/";
                    String opSep = ",";

                    String tempEdit = degree + opSep + year + mainSe + dig_year_in;
                    userDetai.setDegree_Year(tempEdit);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                } else {
                    //String format process
                    String mainSe = "/";
                    String opSep = ",";
                    String tempEdit = degree + opSep + year + mainSe;
                    userDetai.setDegree_Year(tempEdit);
                    boolean updateUser = userService.updateUser(user);
                    resp.getWriter().print(updateUser);
                }
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                //String format process
                String mainSe = "/";
                String opSep = ",";

                String tempEdit = degree + opSep + year + mainSe;

                UserDetail userDetail = new UserDetail();
                userDetail.setDegree_Year(tempEdit);

                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "updFeat", method = RequestMethod.POST)
    public void upFeat(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        Set<Skill> skills = user.getSkills();
        String skillName = req.getParameter("skill_name");
        int skillPresenatage = Integer.parseInt(req.getParameter("presentage"));
        int usId = Integer.parseInt(req.getParameter("usid"));
        Skill temp = null;
        for (Skill skill : skills) {
            temp = skill;
        }
        if (temp != null) {
            try {
                for (Skill skill : skills) {
                    if (skill.getId() == usId) {
                        skill.setSkillName(skillName);
                        skill.setSkillrate(skillPresenatage);
                        if (skillPresenatage <= 20) {
                            skill.setBclas("progress-bar-danger");
                        } else if (skillPresenatage >= 21 && skillPresenatage <= 44) {
                            skill.setBclas("progress-bar-warning");
                        } else if (skillPresenatage >= 45 && skillPresenatage <= 65) {
                            skill.setBclas("progress-bar-info");
                        } else if (skillPresenatage >= 66 && skillPresenatage <= 75) {
                            skill.setBclas("progress-bar-primary");
                        } else if (skillPresenatage >= 76 && skillPresenatage <= 100) {
                            skill.setBclas("progress-bar-success");
                        }
                    }
                }

                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print("Sanu it is" + updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
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
                tempSkill.setSkillName(skillName);
                tempSkill.setSkillrate(skillPresenatage);
                user.getSkills().add(tempSkill);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "updaAcco", method = RequestMethod.POST)
    public void upAcco(HttpServletRequest req, HttpServletResponse resp) {
        //get the current user
        User user = (User) req.getSession().getAttribute("cuser");
        UserDetail userDetai = user.getUserDetai();
        String pro = req.getParameter("pr");
        String proDes = req.getParameter("prdes");
        String course = req.getParameter("courset");
        String courseDes = req.getParameter("courseDeta");
        String lang = req.getParameter("lang");
        String certific = req.getParameter("certific");
        String cdes = req.getParameter("cdes");

        if (userDetai != null) {
            try {
                String proIn = userDetai.getProject();
                String courseIn = userDetai.getCourse();
                String langIn = userDetai.getLanguages();
                String certiIn = userDetai.getCertification();

                //String format process
                String mainSe = "/";
                String opSep = ",";
                String proEdited = null;
                String courseEdited = null;
                String lanEdited = null;
                String cetiEdited = null;
                if (proIn != null) {
                    proEdited = pro + opSep + proDes + mainSe + proIn;
                } else {
                    proEdited = pro + opSep + proDes + mainSe;
                }

                if (courseIn != null) {
                    courseEdited = course + opSep + courseDes + mainSe + courseIn;
                } else {
                    courseEdited = course + opSep + courseDes + mainSe;
                }

                if (langIn != null) {
                    lanEdited = lang + mainSe + langIn;
                } else {
                    lanEdited = lang + mainSe;
                }

                if (certiIn != null) {
                    cetiEdited = certific + opSep + cdes + mainSe + certiIn;
                } else {
                    cetiEdited = certific + opSep + cdes + mainSe;
                }

                userDetai.setProject(proEdited);
                userDetai.setCourse(courseEdited);
                userDetai.setLanguages(lanEdited);
                userDetai.setCertification(cetiEdited);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                UserDetail userDetail = new UserDetail();
//                String format process
                String mainSe = "/";
                String opSep = ",";

                String proEdited = pro + opSep + proDes + mainSe;
                String courseEdited = course + opSep + courseDes + mainSe;
                String lanEdited = lang + mainSe;
                String cetiEdited = certific + opSep + cdes + mainSe;

                userDetail.setProject(proEdited);
                userDetail.setCourse(courseEdited);
                userDetail.setLanguages(lanEdited);
                userDetail.setCertification(cetiEdited);

                user.setUserDetai(userDetail);
                boolean updateUser = userService.updateUser(user);
                resp.getWriter().print(updateUser);
            } catch (Exception ex) {
                Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @RequestMapping(value = "getAllUsersDe")
    public void getallRatings(HttpServletRequest req, HttpServletResponse resp) {
        try {
            User user = (User) req.getSession().getAttribute("cuser");
            UserDetail userDetail = user.getUserDetai();
            if (userDetail != null) {
                UserDetail tempUserDe = new UserDetail();
                tempUserDe.setCourse(userDetail.getCourse());
                tempUserDe.setCertification(userDetail.getCertification());
                tempUserDe.setDegree_Year(userDetail.getDegree_Year());
                tempUserDe.setKeyExpertise(userDetail.getKeyExpertise());
                tempUserDe.setLanguages(userDetail.getLanguages());
                tempUserDe.setSummery1(userDetail.getSummery1());
                tempUserDe.setSummery2(userDetail.getSummery2());
                tempUserDe.setResearchInterests(userDetail.getResearchInterests());
                tempUserDe.setPriorExperiences(userDetail.getPriorExperiences());
                tempUserDe.setProject(userDetail.getProject());

                String toJson = new Gson().toJson(tempUserDe);
                resp.getWriter().write(toJson);
            }

        } catch (IOException ex) {
            Logger.getLogger(UserDetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
