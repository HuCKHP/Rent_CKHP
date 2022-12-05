package com.groupone.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		// 濡�洹몄�몄�� ����寃쎌�곕�� 濡�洹몄�몄�� ����濡� ����... 湲��곌린, 湲����명�� 蹂닿린�� 濡�洹몄�몄�� �댁�� ��洹쇳�� �� ����.
		// �몄���� 寃��ы��..
		// �대�쇱�댁�명�몃��� �몄���� ����.. �대�쇱�댁�명�멸� 蹂대�� 荑��ㅼ�� ���대���� �쇱����� �몄���� 媛�泥대�� 媛��몄����.
		HttpSession session = request.getSession();
		// 媛��몄�� �몄������ login 蹂���瑜� 李얠���� 由ы�대�����. 洹몃�곕�� login蹂����� 由ы�댄������ 紐⑤Ⅴ�� 紐⑤�� 蹂����� 理������� Object濡� 諛���
		Object obj = session.getAttribute("id");
		if(obj==null) {
			response.sendRedirect(request.getContextPath()+"/");	//而⑦�몃·��/寃쎈�諛�轅�
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("PostHandle start");
		System.out.println("PostHandle end");
		super.postHandle(request, response, handler, modelAndView);
	}
}
