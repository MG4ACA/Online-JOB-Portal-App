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
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;

/**
 *
 * @author Sanu
 */
@Entity
public class Wall extends SupreCore {

    private int wallID;
    private Set<User> userid = new HashSet<User>();
    private String date;
    private Set<Post> post = new HashSet<Post>();

    public Wall() {
    }

    /**
     * @return the wallID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getWallID() {
        return wallID;
    }

    /**
     * @param wallID the wallID to set
     */
    public void setWallID(int wallID) {
        this.wallID = wallID;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the userid
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "wallId",fetch = FetchType.EAGER)
    public Set<User> getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(Set<User> userid) {
        this.userid = userid;
    }

    /**
     * @return the post
     */
    @ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @OrderBy(value = "ppid")
    public Set<Post> getPost() {
        return post;
    }

    /**
     * @param post the post to set
     */
    public void setPost(Set<Post> post) {
        this.post = post;
    }

}
