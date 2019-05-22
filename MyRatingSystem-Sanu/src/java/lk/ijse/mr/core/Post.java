/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.core;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

/**
 *
 * @author Sanu
 */
@Entity
public class Post extends SupreCore {

    private int ppid;
    private String image;
    private String details;
    private int likes; 
    private String date;
    private Set<Wall> wallDe = new HashSet<Wall>();
    private Set<Comment> commnets=new HashSet<Comment>();
    private String visib;

    public Post() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
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
     * @return the wallDe
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "post",fetch = FetchType.EAGER)
    public Set<Wall> getWallDe() {
        return wallDe;
    }

    /**
     * @param wallDe the wallDe to set
     */
    public void setWallDe(Set<Wall> wallDe) {
        this.wallDe = wallDe;
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
     * @return the commnets
     */
    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @OrderBy(value = "id")
    public Set<Comment> getCommnets() {
        return commnets;
    }

    /**
     * @param commnets the commnets to set
     */
    public void setCommnets(Set<Comment> commnets) {
        this.commnets = commnets;
    }

}
