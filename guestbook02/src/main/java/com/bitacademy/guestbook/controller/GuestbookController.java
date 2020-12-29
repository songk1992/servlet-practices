package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String actionName = request.getParameter("a");
		String path = "/WEB-INF/views/";
		
		if("form".equals(actionName)) {
			RequestDispatcher rd = request.getRequestDispatcher(path + "form.jsp");
			rd.forward(request, response);
		} else if("add".equals(actionName)) {
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			
			new GuestbookDao().insert(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
			
			
		} else if("delete".equals(actionName)) {
			
			request.setCharacterEncoding("utf-8");
			String no = request.getParameter("no");
			String password = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(Long.valueOf(no));
			vo.setPassword(password);

			new GuestbookDao().delete(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
			
			
		} else if("deleteform".equals(actionName)) {
			
			RequestDispatcher rd = request.getRequestDispatcher(path + "deleteform.jsp");
			rd.forward(request, response);
			
			
		} else {
			List<GuestbookVo> list = new GuestbookDao().findAll();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher(path + "index.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
