/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author Sanu
 */
@Entity
public class CV extends SupreCore {

    private int id;
    private User user;
    private String cf;

    public CV() {
    }

    public CV(int id, User user, String cf) {
        this.id = id;
        this.user = user;
        this.cf = cf;
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
     * @return the user
     */
    @OneToOne(mappedBy = "cv")
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

}
