package web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet("/sessionservlet")
public class SessionControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);

        if (session.getAttribute("role") == null){
            session.setAttribute("role","moderator");
        }

//        System.out.println(session.getAttribute("role"));

        Integer counter = (Integer) session.getAttribute("counter");

        if (counter == null){
            session.setAttribute("counter",1);
        } else{
            counter++;
            session.setAttribute("counter",counter);
        }

//        System.out.println(session.getAttribute("counter"));

        req.setAttribute("lifecycle","CONTROL request LIFECYCLE");
        //req.getRequestDispatcher().forward();
        //resp.sendRedirect("/jsp/sessionattr.jsp");
        req.getRequestDispatcher("/jsp/sessionattr.jsp").forward(req,resp);
    }


}
