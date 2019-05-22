/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
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
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;

/**
 *
 * @author Sanu
 */
@Entity
public class User extends SupreCore {

    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String country;
    private String tp;
    private String postalcode;
    private String cf;
    private String wp;
    private String possition;
    private Set<Wall> wallId = new HashSet<>();
    private Set<Request> reqDetail = new HashSet<>();
    private Set<Message> message = new HashSet<>();
    private CV cv;
    private Set<Company> company = new HashSet<>();
    private Set<Interview> interview = new HashSet<>();
    private Set<Notification> notyDe = new HashSet<>();
    private Set<Skill> skills = new HashSet<>();
    private Set<Comment> comments = new HashSet<>();
    private Friend friends;
    private Rating rating;
    private UserDetail userDetai;
    private Country myContry;

    public User() {
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
     * @return the possition
     */
    public String getPossition() {
        return possition;
    }

    /**
     * @param possition the possition to set
     */
    public void setPossition(String possition) {
        this.possition = possition;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the tp
     */
    public String getTp() {
        return tp;
    }

    /**
     * @param tp the tp to set
     */
    public void setTp(String tp) {
        this.tp = tp;
    }

    /**
     * @return the postalcode
     */
    public String getPostalcode() {
        return postalcode;
    }

    /**
     * @param postalcode the postalcode to set
     */
    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    /**
     * @return the cf
     */
    public String getCf() {
        return cf;
    }

    /**
     * @param cf the cf to set
     */
    public void setCf(String cf) {
        this.cf = cf;
    }

    /**
     * @return the wallId
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @OrderBy(value = "wallID")
    public Set<Wall> getWallId() {
        return wallId;
    }

    /**
     * @param wallId the wallId to set
     */
    public void setWallId(Set<Wall> wallId) {
        this.wallId = wallId;
    }

    /**
     * @return the reqDetail
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Request> getReqDetail() {
        return reqDetail;
    }

    /**
     * @param reqDetail the reqDetail to set
     */
    public void setReqDetail(Set<Request> reqDetail) {
        this.reqDetail = reqDetail;
    }

    /**
     * @return the message
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @OrderBy(value = "mid")
    public Set<Message> getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(Set<Message> message) {
        this.message = message;
    }

    /**
     * @return the cv
     */
    @OneToOne(cascade = CascadeType.ALL)
    public CV getCv() {
        return cv;
    }

    /**
     * @param cv the cv to set
     */
    public void setCv(CV cv) {
        this.cv = cv;
    }

    /**
     * @return the company
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Company> getCompany() {
        return company;
    }

    /**
     * @param company the company to set
     */
    public void setCompany(Set<Company> company) {
        this.company = company;
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
     * @return the notyDe
     */
    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL,mappedBy = "user")
    @OrderBy(value = "nid")
    public Set<Notification> getNotyDe() {
        return notyDe;
    }

    /**
     * @param notyDe the notyDe to set
     */
    public void setNotyDe(Set<Notification> notyDe) {
        this.notyDe = notyDe;
    }

    /**
     * @return the wp
     */
    public String getWp() {
        return wp;
    }

    /**
     * @param wp the wp to set
     */
    public void setWp(String wp) {
        this.wp = wp;
    }

    /**
     * @return the skills
     */
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "User_Skill", joinColumns = {
        @JoinColumn(name = "User_ID")}, inverseJoinColumns = {
        @JoinColumn(name = "Skill_ID")})
    public Set<Skill> getSkills() {
        return skills;
    }

    /**
     * @param skills the skills to set
     */
    public void setSkills(Set<Skill> skills) {
        this.skills = skills;
    }

    /**
     * @return the rating
     */
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Rating getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(Rating rating) {
        this.rating = rating;
    }

    /**
     * @return the userDetai
     */
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public UserDetail getUserDetai() {
        return userDetai;
    }

    /**
     * @param userDetai the userDetai to set
     */
    public void setUserDetai(UserDetail userDetai) {
        this.userDetai = userDetai;
    }

    /**
     * @return the friends
     */
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Friend getFriends() {
        return friends;
    }

    /**
     * @param friends the friends to set
     */
    public void setFriends(Friend friends) {
        this.friends = friends;
    }

    /**
     * @return the myContry
     */
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Country getMyContry() {
        return myContry;
    }

    /**
     * @param myContry the myContry to set
     */
    public void setMyContry(Country myContry) {
        this.myContry = myContry;
    }

    /**
     * @return the comments
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Comment> getComments() {
        return comments;
    }

    /**
     * @param comments the comments to set
     */
    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }

}
