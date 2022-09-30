package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 로그인 처리
		HttpSession session = request.getSession(); // 세션을 불러온다.
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo = dao.memberSelect(vo);
		
		if(vo != null) {
			//세션처리하고, 세션객체에 아이디,권한,이름 담는 것
			session.setAttribute("memberId", vo.getMemberId()); 
			session.setAttribute("memberAuthor", vo.getMemberAuthor());
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("memberPw", vo.getMemberPw());
			session.setAttribute("memberBirth", vo.getMemberBirth());
			session.setAttribute("memberEmail", vo.getMemberEmail());
			session.setAttribute("memberAddress", vo.getMemberAddress());
			session.setAttribute("memberTel", vo.getMemberTel());
			session.setAttribute("memberCreateDate", vo.getMemberCreateDate());
			session.setAttribute("memberPoint", vo.getMemberPoint());
			session.setAttribute("memberGender", vo.getMemberGender());
			request.setAttribute("message", vo.getMemberName() + "님 환영합니다.");
		}else {
			//실패메세지 전달
			request.setAttribute("message", "아이디 또는 패스워드가 틀렸습니다.");
		}
		return "noTiles:main/main";
	}


}
