/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.other;

import lk.ijse.mr.core.SupreCore;

/**
 *
 * @author Sanu
 */
public class TempoPost extends SupreCore {

    private int ppid;
    private String image;
    private String details;
    private int likes;
    private String commnets;
    private String visib;
    private String firstName;
    private String lastName;
    private String cf;
    private String possition;
    private String date;

    public TempoPost() {
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
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the details
     */
    public String getDetails() {
        return details;
    }

    /**
     * @param details the details to set
     */
    public void setDetails(String details) {
        this.details = details;
    }

    /**
     * @return the likes
     */
    public int getLikes() {
        return likes;
    }

    /**
     * @param likes the likes to set
     */
    public void setLikes(int likes) {
        this.likes = likes;
    }

    /**
     * @return the commnets
     */
    public String getCommnets() {
        return commnets;
    }

    /**
     * @param commnets the commnets to set
     */
    public void setCommnets(String commnets) {
        this.commnets = commnets;
    }

    /**
     * @return the visib
     */
    public String getVisib() {
        return visib;
    }

    /**
     * @param visib the visib to set
     */
    public void setVisib(String visib) {
        this.visib = visib;
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
     * @return the ppid
     */
    public int getPpid() {
        return ppid;
    }

    /**
     * @param ppid the ppid to set
     */
    public void setPpid(int ppid) {
        this.ppid = ppid;
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

}
