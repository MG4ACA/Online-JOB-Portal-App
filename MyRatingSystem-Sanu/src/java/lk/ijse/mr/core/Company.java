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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author Sanu
 */
@Entity
public class Company extends SupreCore {

    private int id;
    private String comName;
    private String title;
    private String profileP;
    private String address;
    private int followers;
    private String aboutComp;
    private String website;
    private String yearfound;
    private String companytype;
    private String companySize;
    private Set<Job> jobs = new HashSet<>();
    private Set<CompanySkills> features = new HashSet<>();
    private Set<Employee> employyes = new HashSet<>();
    private User user;

    public Company() {
    }

    /**
     * @return the id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the comName
     */
    public String getComName() {
        return comName;
    }

    /**
     * @param comName the comName to set
     */
    public void setComName(String comName) {
        this.comName = comName;
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
     * @return the profileP
     */
    public String getProfileP() {
        return profileP;
    }

    /**
     * @param profileP the profileP to set
     */
    public void setProfileP(String profileP) {
        this.profileP = profileP;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the followers
     */
    public int getFollowers() {
        return followers;
    }

    /**
     * @param followers the followers to set
     */
    public void setFollowers(int followers) {
        this.followers = followers;
    }

    /**
     * @return the aboutComp
     */
    @Column(name = "aboutComp", length = 1000)
    public String getAboutComp() {
        return aboutComp;
    }

    /**
     * @param aboutComp the aboutComp to set
     */
    public void setAboutComp(String aboutComp) {
        this.aboutComp = aboutComp;
    }

    /**
     * @return the website
     */
    public String getWebsite() {
        return website;
    }

    /**
     * @param website the website to set
     */
    public void setWebsite(String website) {
        this.website = website;
    }

    /**
     * @return the yearfound
     */
    public String getYearfound() {
        return yearfound;
    }

    /**
     * @param yearfound the yearfound to set
     */
    public void setYearfound(String yearfound) {
        this.yearfound = yearfound;
    }

    /**
     * @return the companytype
     */
    public String getCompanytype() {
        return companytype;
    }

    /**
     * @param companytype the companytype to set
     */
    public void setCompanytype(String companytype) {
        this.companytype = companytype;
    }

    /**
     * @return the companySize
     */
    public String getCompanySize() {
        return companySize;
    }

    /**
     * @param companySize the companySize to set
     */
    public void setCompanySize(String companySize) {
        this.companySize = companySize;
    }

    /**
     * @return the jobs
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Job> getJobs() {
        return jobs;
    }

    /**
     * @param jobs the jobs to set
     */
    public void setJobs(Set<Job> jobs) {
        this.jobs = jobs;
    }

    /**
     * @return the user
     */
    /**
     * @return the features
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "Company_Companyskill", joinColumns = {
        @JoinColumn(name = "Company_ID")}, inverseJoinColumns = {
        @JoinColumn(name = "CompanySkill_ID")})
    public Set<CompanySkills> getFeatures() {
        return features;
    }

    /**
     * @param features the features to set
     */
    public void setFeatures(Set<CompanySkills> features) {
        this.features = features;
    }

    /**
     * @return the employyes
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "Company_Employee", joinColumns = {
        @JoinColumn(name = "Company_ID")}, inverseJoinColumns = {
        @JoinColumn(name = "Employee_ID")})
    public Set<Employee> getEmployyes() {
        return employyes;
    }

    /**
     * @param employyes the employyes to set
     */
    public void setEmployyes(Set<Employee> employyes) {
        this.employyes = employyes;
    }

    /**
     * @return the user
     */
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

}
