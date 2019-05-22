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
@Table(name = "Notification")
public class Notification extends SupreCore {

    private int nid;
    private String date;
    private User user;
    private String notMessage;
    private String read;
    private int opId;
    private int opId2;
    private String optional;
    private String optiona2;
    private String ntype;
    private String reqornot;

    public Notification() {
    }

    /**
     * @return the nid
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getNid() {
        return nid;
    }

    /**
     * @param nid the nid to set
     */
    public void setNid(int nid) {
        this.nid = nid;
    }

    /**
     * @return the opId
     */
    @Column(name = "OpId")
    public int getOpId() {
        return opId;
    }

    /**
     * @param opId the opId to set
     */
    public void setOpId(int opId) {
        this.opId = opId;
    }

    /**
     * @return the opId2
     */
    @Column(name = "OpId2")
    public int getOpId2() {
        return opId2;
    }

    /**
     * @param opId2 the opId2 to set
     */
    public void setOpId2(int opId2) {
        this.opId2 = opId2;
    }

    /**
     * @return the optional
     */
    @Column(name = "Optional",length = 65535)
    public String getOptional() {
        return optional;
    }

    /**
     * @param optional the optional to set
     */
    public void setOptional(String optional) {
        this.optional = optional;
    }

    /**
     * @return the optiona2
     */
    @Column(name = "Optional2",length = 65535)
    public String getOptiona2() {
        return optiona2;
    }

    /**
     * @param optiona2 the optiona2 to set
     */
    public void setOptiona2(String optiona2) {
        this.optiona2 = optiona2;
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
     * @return the dto
     */
    /**
     * @return the notMessage
     */
    @Column(name = "NotyMassage",length = 65535)
    public String getNotMessage() {
        return notMessage;
    }

    /**
     * @param notMessage the notMessage to set
     */
    public void setNotMessage(String notMessage) {
        this.notMessage = notMessage;
    }

    /**
     * @return the read
     */
    @Column(name = "readst")
    public String getRead() {
        return read;
    }

    /**
     * @param read the read to set
     */
    public void setRead(String read) {
        this.read = read;
    }

    /**
     * @return the user
     */
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
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
     * @return the ntype
     */
    @Column(name = "ntype")
    public String getNtype() {
        return ntype;
    }

    /**
     * @param ntype the ntype to set
     */
    public void setNtype(String ntype) {
        this.ntype = ntype;
    }

    /**
     * @return the reqornot
     */
    @Column(name = "reqornot")
    public String getReqornot() {
        return reqornot;
    }

    /**
     * @param reqornot the reqornot to set
     */
    public void setReqornot(String reqornot) {
        this.reqornot = reqornot;
    }

}
