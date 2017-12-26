package web;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;

public class SessionLocator {
    private final  static String BR="<br><hr>";
    public static boolean flag = true;

    public static ArrayList<String> addMessage(HttpSession session){
        ArrayList<String> message = new ArrayList<String>();
        if (session != null){
            message.add("Creation Time: "+new Date(session.getCreationTime())+BR);
            message.add("Sessiond id "+ session.getId()+BR);
            message.add("Session alive "+BR);
        } else{
            message.add("Session disabled!"+BR);
        }
        return message;
    }
}
