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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Sanu
 */
@Entity
@Table(name = "Request")
public class Request extends SupreCore {

    private int reid;
    private String date;
    private User user;
    private String type;
    private String fromUsr;
    private String toUsr;
    private String Request;

    public Request() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getReid() {
        return reid;
    }

    /**
     * @param reid the reid to set
     */
    public void setReid(int reid) {
        this.reid = reid;
    }

    /**
     * @return the date
     */
    @Column(name = "date")
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
     * @return the user
     */
    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
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
     * @return the type
     */
    @Column(name = "type")
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the from
     */
    @Column(name = "fromUser")
    public String getFrom() {
        return fromUsr;
    }

    /**
     * @param from the from to set
     */
    public void setFrom(String from) {
        this.fromUsr = from;
    }

    /**
     * @return the to
     */
    @Column(name = "toUser")
    public String getTo() {
        return toUsr;
    }

    /**
     * @param to the to to set
     */
    public void setTo(String to) {
        this.toUsr = to;
    }

    /**
     * @return the Request
     */
    @Column(name = "request")
    public String getRequest() {
        return Request;
    }

    /**
     * @param Request the Request to set
     */
    public void setRequest(String Request) {
        this.Request = Request;
    }

}
