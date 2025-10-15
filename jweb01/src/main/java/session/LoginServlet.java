package session;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/session")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//응답 유형
		response.setContentType("text/html; charset=utf-8");
		
		//폼에 입력된 데이터 받기
		String id = request.getParameter("uid");
		String pw = request.getParameter("passwd");
		
		//출력 스트링 생성
		PrintWriter out = response.getWriter();
		
		//세션 클래스 인스턴스 생성
		HttpSession session = request.getSession();
		
		//가입된 회원만 로그인(인가)
		if(id.equals("이나경") && pw.equals("12345")) {
//			out.println("로그인 성공");
			session.setAttribute("userid", id); //세션 발급(이름: userid)
			
			//발급된 세션 가져오기
			String sessionId = (String)session.getAttribute("userid");
			out.println(sessionId + "님이 로그인 했습니다.");
		}else {
			out.println("로그인 실패!");
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.go(-1)"); //history.back()
			out.println("</script>");
		}
		
	}

}
