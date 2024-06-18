package com.spring.sInterceptor2.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Level2Interceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 99 : (Integer) session.getAttribute("sLevel");
		if(level > 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/message/loginNo");
			dispatcher.forward(request, response);
			return false;
		}
		else if(level == 2) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/message/levelNo");
			dispatcher.forward(request, response);
			return false;			
		}
		
		return true;
	}
	
}