package web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TimeoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = null;
        if (SessionLocator.flag){
            session = req.getSession();
            int timeLive = 10;
            session.setMaxInactiveInterval(timeLive);
            SessionLocator.flag=false;
        } else{
            session = req.getSession(false);
            if (session == null){
                SessionLocator.flag=true;
            }
        }
        req.setAttribute("messages",SessionLocator.addMessage(session));
        req.getRequestDispatcher("jsp/time.jsp").forward(req,resp);
    }
}
