package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Bye;
import com.ict.model.Command;
import com.ict.model.Grade;
import com.ict.model.Hello;
import com.ict.model.Hi;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 파라미터 값
		String cmd = request.getParameter("cmd");
		String path = null;
		Command comm = null;
		if(cmd.equalsIgnoreCase("hello")) {
			// 상속 특징인 다형성을 통해 부모인 Command 객체타입으로 자식 객체 생성이 가능해서 간단해짐
			// comm.exec()로 실행단이 통일이 가능해짐
			comm = new Hello();
		}else if(cmd.equalsIgnoreCase("hi")) {
			comm = new Hi();
		}else if(cmd.equalsIgnoreCase("bye")) {
			comm = new Bye();
		}else if(cmd.equalsIgnoreCase("grade")) {
			comm = new Grade();
		}
		path = comm.exec(request, response);
		// 3개가 동시에 일어나는게 아니므로 이렇게 간략화가 가능해짐
		request.getRequestDispatcher(path).forward(request, response);
	}

}
