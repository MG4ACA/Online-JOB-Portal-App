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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author Sanu
 */
@Entity
public class Friend extends SupreCore {

    private int id;
    private User user;
    private String date;
    private Set<FriendCircle> FriendsCir = new HashSet<FriendCircle>();

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
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "friends")
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
     * @return the FriendsCir
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<FriendCircle> getFriendsCir() {
        return FriendsCir;
    }

    /**
     * @param FriendsCir the FriendsCir to set
     */
    public void setFriendsCir(Set<FriendCircle> FriendsCir) {
        this.FriendsCir = FriendsCir;
    }
 
}
