package myApplication.webSocket;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;
import java.util.Random;

@ServerEndpoint("/endpoint")
public class WebSocket {
    @OnMessage
    public String onMessage(String message){
        int[] dataPointsParam = new int[40];
        Random r = new Random();
        for(int i=0;i<40;i++)
        {
            dataPointsParam[i]=r.nextInt(60);
           // System.out.println(dataPointsParam[i]);
        }
        String dataArrayString = java.util.Arrays.toString(dataPointsParam);
        return dataArrayString;
    }
}
