package web;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListenerImpl implements HttpSessionAttributeListener {
    public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("add: "+ httpSessionBindingEvent.getClass().getSimpleName()+
        " : "+httpSessionBindingEvent.getName()
        +" : "+httpSessionBindingEvent.getValue());
    }

    public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent) {

    }

    public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("replace: "+ httpSessionBindingEvent.getClass().getSimpleName()+
                " : "+httpSessionBindingEvent.getName()
                +" : "+httpSessionBindingEvent.getValue());
    }
}
