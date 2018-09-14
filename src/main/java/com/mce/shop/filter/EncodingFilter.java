package com.mce.shop.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingFilter implements Filter {
    private String encode = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        response.setContentType("text/html;charset=utf-8");
        if(this.encode != null && !this.encode.equals("")){
            request.setCharacterEncoding(this.encode);
            response.setContentType("text/html;charset=utf-8");
        }else{
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
    //自动生成下面的

}
