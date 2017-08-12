package com.imgmap.utils;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Repository @SuppressWarnings("all")
public class AdminSessionInterceptor extends HandlerInterceptorAdapter {
	/**
	 * session拦截 判断是否
	 * ajax 请求也会拦截，但不会直接跳转页面，需页面ajax 返回值做判断是否跳转页面
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		String requestUri = request.getRequestURI();  
        String contextPath = request.getContextPath();  
        String url = requestUri.substring(contextPath.length());  
		
		if(session.getAttribute("admin_user") == null)
		{
			 if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){  
                response.setHeader("sessionstatus", "timeout");//对ajax拦截 ，并在返回时在head信息，设置session状态
                response.sendRedirect(contextPath + "/forward.html");
			 }else{
				 //ajax以外的拦截
				 response.sendRedirect(contextPath + "/forward.html");
			 }  
			 return false;
		}
		return super.preHandle(request, response, handler);
	}
	
}
