/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.Message;
import lk.ijse.mr.repository.MessageRepository;
import lk.ijse.mr.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sanu
 */
@Service
@Transactional
//@Transactional(propagation = Propagation.REQUIRED)
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messages;

    @Override
    public boolean addMessage(Message dto) throws Exception {
        return messages.add(dto);
    }

    @Override
    public boolean deleteMessage(int id) throws Exception {
        return messages.delete(id);
    }

    @Override
    public boolean updateMessage(Message dto) throws Exception {
        return messages.update(dto);
    }

    @Override
    public Message searchMessage(int id) throws Exception {
        return messages.search(id);
    }

    @Override
    public List<Message> getMessageList() throws Exception {
        return messages.getList();
    }

    @Override
    public List<Message> getListForQuery(String query) throws Exception {
        return messages.getListA(query);
    }

}
