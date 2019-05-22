/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author Sanu
 */
@Entity
public class UserDetail extends SupreCore {

    private int id;
    private String summery1;
    private String summery2;
    private String researchInterests;
    private String priorExperiences;
    private String keyExpertise;
    private String degree_Year;
    private String project;
    private String course;
    private String languages;
    private String certification;
    private User user;

    public UserDetail() {
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
     * @return the summery1
     */
    @Column(length = 65535)
    public String getSummery1() {
        return summery1;
    }

    /**
     * @param summery1 the summery1 to set
     */
    public void setSummery1(String summery1) {
        this.summery1 = summery1;
    }

    /**
     * @return the summery2
     */
    @Column(length = 65535)
    public String getSummery2() {
        return summery2;
    }

    /**
     * @param summery2 the summery2 to set
     */
    public void setSummery2(String summery2) {
        this.summery2 = summery2;
    }

    /**
     * @return the researchInterests
     */
    @Column(length = 65535)
    public String getResearchInterests() {
        return researchInterests;
    }

    /**
     * @param researchInterests the researchInterests to set
     */
    public void setResearchInterests(String researchInterests) {
        this.researchInterests = researchInterests;
    }

    /**
     * @return the priorExperiences
     */
    @Column(length = 65535)
    public String getPriorExperiences() {
        return priorExperiences;
    }

    /**
     * @param priorExperiences the priorExperiences to set
     */
    public void setPriorExperiences(String priorExperiences) {
        this.priorExperiences = priorExperiences;
    }

    /**
     * @return the keyExpertise
     */
    @Column(length = 65535)
    public String getKeyExpertise() {
        return keyExpertise;
    }

    /**
     * @param keyExpertise the keyExpertise to set
     */
    public void setKeyExpertise(String keyExpertise) {
        this.keyExpertise = keyExpertise;
    }

    /**
     * @return the degree_Year
     */
    public String getDegree_Year() {
        return degree_Year;
    }

    /**
     * @param degree_Year the degree_Year to set
     */
    public void setDegree_Year(String degree_Year) {
        this.degree_Year = degree_Year;
    }

    /**
     * @return the project
     */
    @Column(length = 65535)
    public String getProject() {
        return project;
    }

    /**
     * @param project the project to set
     */
    public void setProject(String project) {
        this.project = project;
    }

    /**
     * @return the course
     */
    @Column(length = 65535)
    public String getCourse() {
        return course;
    }

    /**
     * @param course the course to set
     */
    public void setCourse(String course) {
        this.course = course;
    }

    /**
     * @return the languages
     */
    @Column(length = 65535)
    public String getLanguages() {
        return languages;
    }

    /**
     * @param languages the languages to set
     */
    public void setLanguages(String languages) {
        this.languages = languages;
    }

    /**
     * @return the certification
     */
    @Column(length = 65535)
    public String getCertification() {
        return certification;
    }

    /**
     * @param certification the certification to set
     */
    public void setCertification(String certification) {
        this.certification = certification;
    }

    /**
     * @return the user
     */
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "userDetai")
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
