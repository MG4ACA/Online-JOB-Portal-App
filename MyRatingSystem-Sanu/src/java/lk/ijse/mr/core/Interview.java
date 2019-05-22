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

/**
 *
 * @author Sanu
 */
@Entity
public class Interview extends SupreCore{

    private int iid;
    private Set<User> user=new HashSet<User>();
    private String req;
    private String other;
    private Set<Job> jobs= new HashSet<Job>();

    public Interview() {
    }

   
    /**
     * @return the iid
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getIid() {
        return iid;
    }

    /**
     * @param iid the iid to set
     */
    public void setIid(int iid) {
        this.iid = iid;
    }

  

    /**
     * @return the req
     */
    public String getReq() {
        return req;
    }

    /**
     * @param req the req to set
     */
    public void setReq(String req) {
        this.req = req;
    }

    /**
     * @return the other
     */
    public String getOther() {
        return other;
    }

    /**
     * @param other the other to set
     */
    public void setOther(String other) {
        this.other = other;
    }

    /**
     * @return the jobs
     */
    @ManyToMany(cascade = CascadeType.ALL,mappedBy = "interview",fetch = FetchType.EAGER)
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
    @ManyToMany(cascade = CascadeType.ALL,mappedBy = "interview",fetch = FetchType.EAGER)
    public Set<User> getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(Set<User> user) {
        this.user = user;
    }

   
}
