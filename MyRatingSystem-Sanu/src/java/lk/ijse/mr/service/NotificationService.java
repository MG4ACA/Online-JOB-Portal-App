/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service;

import java.util.List;
import lk.ijse.mr.core.Notification;

/**
 *
 * @author Sanu
 */
public interface NotificationService {
    public boolean addNotification(Notification dto) throws Exception;
    public boolean deleteNotification(int id) throws Exception;
    public boolean updateNotification(Notification dto) throws Exception;
    public Notification searchNotification(int id) throws Exception;
    public List<Notification> getNotificationList() throws Exception; 
    public List<Notification> getListForQuery(String query) throws Exception; 
}
