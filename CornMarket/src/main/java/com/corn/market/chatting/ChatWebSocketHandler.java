package com.corn.market.chatting;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatWebSocketHandler extends TextWebSocketHandler {
 
   
    private Map<String, WebSocketSession> users = new ConcurrentHashMap<>();

    @Override
    public void afterConnectionEstablished(
            WebSocketSession session) throws Exception {

        
        log(session.getId() + "연결됨");
         
       
        users.put(session.getId(), session);
    }

    @Override
    public void afterConnectionClosed(
            WebSocketSession session, CloseStatus status) throws Exception {
        log(session.getId() + "연결 종료됨");

       
        users.remove(session.getId());
    }
    
    @Override
    protected void handleTextMessage(
            WebSocketSession session, TextMessage message) throws Exception {
        log(session.getId() + "로 부터 메시지 수신: " + message.getPayload());

         
        String current = session.getId(); 
        for (WebSocketSession s : users.values()) {   
              if(  !s.getId().equals(current)) { 
            		s.sendMessage(message);		        
		            log(s.getId() + "에 메시지 발송: " + message.getPayload());
              }             
        }
    }

    @Override
    public void handleTransportError(
            WebSocketSession session, Throwable exception) throws Exception {
        log(session.getId() + " 익셉션 발생: " + exception.getMessage());
    }

    private void log(String logmsg) {
        System.out.println(new Date() + " : " + logmsg);
    }

}