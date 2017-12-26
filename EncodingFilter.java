package web;

import javax.jws.WebParam;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;
import java.util.logging.Filter;
@WebFilter(urlPatterns = {"/*"},
initParams = {
        @WebInitParam(name="encoding",value = "UTF-8", description = "Encoding Param")})
public class EncodingFilter implements javax.servlet.Filter {
    private String code;
    public void init(FilterConfig filterConfig) throws ServletException {
        code = filterConfig.getInitParameter("encoding");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String codeRequest = servletRequest.getCharacterEncoding();
        if (code != null && !code.equalsIgnoreCase(codeRequest)){
            servletRequest.setCharacterEncoding(code);
            servletResponse.setCharacterEncoding(code);
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    public void destroy() {
        code = null;
    }
}
