/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import javax.persistence.CascadeType;
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
public class Rating extends SupreCore{
    private int id;
    private int fiveStra;
    private int fourStar;
    private int threeStar;
    private int twoStar;
    private int oneStar;
    private int rcount;
    private User user;
    

    public Rating() {
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
     * @return the fiveStra
     */
    public int getFiveStra() {
        return fiveStra;
    }

    /**
     * @param fiveStra the fiveStra to set
     */
    public void setFiveStra(int fiveStra) {
        this.fiveStra = fiveStra;
    }

    /**
     * @return the fourStar
     */
    public int getFourStar() {
        return fourStar;
    }

    /**
     * @param fourStar the fourStar to set
     */
    public void setFourStar(int fourStar) {
        this.fourStar = fourStar;
    }

    /**
     * @return the threeStar
     */
    public int getThreeStar() {
        return threeStar;
    }

    /**
     * @param threeStar the threeStar to set
     */
    public void setThreeStar(int threeStar) {
        this.threeStar = threeStar;
    }

    /**
     * @return the twoStar
     */
    public int getTwoStar() {
        return twoStar;
    }

    /**
     * @param twoStar the twoStar to set
     */
    public void setTwoStar(int twoStar) {
        this.twoStar = twoStar;
    }

    /**
     * @return the oneStar
     */
    public int getOneStar() {
        return oneStar;
    }

    /**
     * @param oneStar the oneStar to set
     */
    public void setOneStar(int oneStar) {
        this.oneStar = oneStar;
    }

    /**
     * @return the user
     */
    @OneToOne(cascade = CascadeType.ALL,mappedBy = "rating",fetch = FetchType.EAGER)
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the rcount
     */
    public int getRcount() {
        return rcount;
    }

    /**
     * @param rcount the rcount to set
     */
    public void setRcount(int rcount) {
        this.rcount = rcount;
    }
}
