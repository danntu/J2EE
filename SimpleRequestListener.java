package web;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class SimpleRequestListener implements ServletRequestListener {
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {
        System.out.println("Request Destroyed: "+
        servletRequestEvent.getServletRequest().getAttribute("lifecycle"));
    }

    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        HttpServletRequest request = (HttpServletRequest) servletRequestEvent.getServletRequest();
        String uri= "Request Initialized for "+request.getRequestURI();
        String id = "Request Initialized with ID = "+request.getRequestedSessionId();
        System.out.println(uri+"\n"+id);
        ServletContext context = servletRequestEvent.getServletContext();
        Integer reqCount = (Integer) request.getSession().getAttribute("counter");
        if (reqCount ==null){
            reqCount=0;
        }
        context.log(uri+"\n"+id+", Request Counter ="+reqCount);
    }
}
