package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.controller.VO;

public class Grade implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String result = "view/grades_result.jsp";
		
		VO vo = new VO();
		
		vo.setName(request.getParameter("name"));
		vo.setKor(request.getParameter("kor"));
		vo.setEng(request.getParameter("eng"));
		vo.setMath(request.getParameter("math"));
		return result;
	}
}
