/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
// */
//package lk.ijse.mr.other;
//
//import java.io.IOException;
//import java.net.Socket;
//import java.util.Collections;
//import java.util.HashSet;
//import java.util.Set;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.websocket.OnClose;
//import javax.websocket.OnError;
//import javax.websocket.OnMessage;
//import javax.websocket.OnOpen;
//import javax.websocket.Session;
//import javax.websocket.server.ServerEndpoint;
//
///**
// *
// * @author Sanu
// */
//@ServerEndpoint(value = "/message")
//public class WebSocket {
//
//    private static Set<Session> peer = Collections.synchronizedSet(new HashSet<Session>());
//
//    @OnOpen
//    public void onOpen(Session session) {
//        peer.add(session);
//        System.out.println("WebSocket Connection Opend..!");
//    }
//
//    @OnMessage
//    public void onMessage(String message) {
//        for (Session session : peer) {
//            try {
//                session.getBasicRemote().sendText(message);
//            } catch (IOException ex) {
//                Logger.getLogger(Socket.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//    }
//
//    @OnClose
//    public void onClose(Session session) {
//        peer.remove(session);
//        System.out.println("WebSocket Connection Disconnected..!");
//    }
//
//    @OnError
//    public void onError(Throwable t) {
//        t.printStackTrace();
//    }
//
//}
