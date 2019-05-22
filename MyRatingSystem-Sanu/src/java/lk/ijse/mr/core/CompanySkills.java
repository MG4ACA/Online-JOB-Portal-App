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

/**
 *
 * @author Sanu
 */
@Entity
public class CompanySkills extends SupreCore{

    private int id;
    private String skillName;
    private String bclas;
    private int skillrate;

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
     * @return the skillName
     */
    public String getSkillName() {
        return skillName;
    }

    /**
     * @param skillName the skillName to set
     */
    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    /**
     * @return the bclas
     */
    public String getBclas() {
        return bclas;
    }

    /**
     * @param bclas the bclas to set
     */
    public void setBclas(String bclas) {
        this.bclas = bclas;
    }

    /**
     * @return the skillrate
     */
    public int getSkillrate() {
        return skillrate;
    }

    /**
     * @param skillrate the skillrate to set
     */
    public void setSkillrate(int skillrate) {
        this.skillrate = skillrate;
    }

    /**
     * @return the users
     */
}
