package jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jstlTestServ")
public class jstlTestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//map   
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("name", "홍길동");
			map.put("hobby", new String[] {"게임", "독서"});
			map.put("job", "개발,디자인,퍼블리셔,기획");
			request.setAttribute("map", map);
		//vo
			request.setAttribute("member", new MemberVO("park", "박길동"));
			request.getSession().setAttribute("member", new MemberVO("hong", "홍길동"));
			
		//list
			ArrayList<MemberVO> list = new ArrayList<MemberVO>();
			list.add(new MemberVO("kim", "김기자"));
			list.add(new MemberVO("choi", "최기자"));
			request.setAttribute("memberlist", list);
			
		//쿠키 저장
			Cookie cookie = new Cookie("popupYn", "n");
			cookie.setMaxAge(60*60*24); //쿠키 하루동안 유지하기(초단위임)
			cookie.setPath("/"); //localhost로 접근하는 모든 경로에서 cookie 읽을 수 있다!
			response.addCookie(cookie); //쿠키는 클라이언트에 저장되기 때문에 response에 담아줘야 한다!
			
			request.setAttribute("goods", new Integer[] {100,200,300});
			
			
			
			//포워드 방식은 프로젝트(ex.animalproject) 다음에 '/'
			//sendRedirect, <a href="/">, <img src="/"> 는 localhost 다음에 '/'
			request.getRequestDispatcher("/jstlTestView.jsp").forward(request, response);
	}




}
