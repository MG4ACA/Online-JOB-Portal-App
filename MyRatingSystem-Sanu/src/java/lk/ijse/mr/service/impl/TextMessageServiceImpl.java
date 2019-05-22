/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lk.ijse.mr.service.impl;

import java.util.List;
import lk.ijse.mr.core.TextMessage;
import lk.ijse.mr.repository.TextMessageRepository;
import lk.ijse.mr.service.TextMessageService;
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
public class TextMessageServiceImpl implements TextMessageService {

    @Autowired
    private TextMessageRepository tRepo;

    @Override
    public boolean addTextMessage(TextMessage dto) throws Exception {
        return tRepo.add(dto);
    }

    @Override
    public boolean deleteTextMessage(int id) throws Exception {
        return tRepo.delete(id);
    }

    @Override
    public boolean updateTextMessage(TextMessage dto) throws Exception {
        return tRepo.update(dto);
    }

    @Override
    public TextMessage searchTextMessage(int id) throws Exception {
        return tRepo.search(id);
    }

    @Override
    public List<TextMessage> getAllTextMessageList() throws Exception {
        return tRepo.getList();
    }

    @Override
    public List<TextMessage> getListForQuery(String query) throws Exception {
        return tRepo.getListA(query);
    }

}
