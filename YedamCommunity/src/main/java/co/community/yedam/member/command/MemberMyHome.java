package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberMyHome implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		// session에 값이 담겨 있기 때문에 session 자체를 불러와서 vo 객체에 담아주는 것
		HttpSession ss = request.getSession();
		vo.setMemberId(ss.getAttribute("memberId").toString()); // 폼에서 넘어온 아이디를 담고
//		vo.setMemberId(request.getParameter("memberId")); // 폼에서 넘어온 아이디를 담고
		vo = dao.memberSelect(vo); // 검색결과 얻기
//		System.out.println(vo);
		request.setAttribute("member", vo); //페이지에 전달하기 위해
		
		return "noTiles:member/memberMyHomeform";
		
	}
}
