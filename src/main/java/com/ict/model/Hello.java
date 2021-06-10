package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일이 끝나면 해당 일의 결과를 볼 곳을 리턴한다. 근데 그것을 controller에게 리턴하는 것
		// 즉, 결과를 보여줄 뷰에 대해서 리턴
		String result = "view/hello_result.jsp";
		
		// request나 session에 저장하는데 보통 request에 저장하고 로그인만 session에 저장
		// 일처리 후 결과 저장
		request.setAttribute("name", "홍길동");
		request.setAttribute("age", 24);
		request.setAttribute("gender", true);
		return result;
	}
}
