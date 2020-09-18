package com.icss.club.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// 执行完毕，返回前拦截

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// 在处理过程中，执行拦截

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// 在拦截点前拦截，如果返回true则不执行拦截点之后的操作（拦截成功）
		// 返回false则不执行拦截
		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null || session.getAttribute("admin") != null) {
			return true;
		} else {
			// 拦截成功返回登录页
			response.sendRedirect(request.getContextPath() + "/login.jsp");
			return false;
		}
	}

}
