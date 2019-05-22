/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

/**
 *
 * @author Sanu
 */
@Entity
public class Job extends SupreCore {

    private int jid;
    private String title;
    private String jobBanner;
    private String jobDescription;
    private String seniorityLevel;
    private String role;
    private String requiredSkills;
    private String pdate;
    private Company comDetails;
    private Set<Interview> interview = new HashSet<Interview>();

    public Job() {
    }

    /**
     * @return the jid
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getJid() {
        return jid;
    }

    /**
     * @param jid the jid to set
     */
    public void setJid(int jid) {
        this.jid = jid;
    }

    /**
     * @return the pdate
     */
    public String getPdate() {
        return pdate;
    }

    /**
     * @param pdate the pdate to set
     */
    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    /**
     * @return the jobDescription
     */
    @Column(length = 5000)
    public String getJobDescription() {
        return jobDescription;
    }

    /**
     * @param jobDescription the jobDescription to set
     */
    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    /**
     * @return the seniorityLevel
     */
    public String getSeniorityLevel() {
        return seniorityLevel;
    }

    /**
     * @param seniorityLevel the seniorityLevel to set
     */
    public void setSeniorityLevel(String seniorityLevel) {
        this.seniorityLevel = seniorityLevel;
    }

    /**
     * @return the comDetails
     */
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Company getComDetails() {
        return comDetails;
    }

    /**
     * @param comDetails the comDetails to set
     */
    public void setComDetails(Company comDetails) {
        this.comDetails = comDetails;
    }

    /**
     * @return the interview
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Interview> getInterview() {
        return interview;
    }

    /**
     * @param interview the interview to set
     */
    public void setInterview(Set<Interview> interview) {
        this.interview = interview;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the jobBanner
     */
    public String getJobBanner() {
        return jobBanner;
    }

    /**
     * @param jobBanner the jobBanner to set
     */
    public void setJobBanner(String jobBanner) {
        this.jobBanner = jobBanner;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @return the requiredSkills
     */
    @Column(length = 1000)
    public String getRequiredSkills() {
        return requiredSkills;
    }

    /**
     * @param requiredSkills the requiredSkills to set
     */
    public void setRequiredSkills(String requiredSkills) {
        this.requiredSkills = requiredSkills;
    }

    /**
     * @return the interview
     */
}
