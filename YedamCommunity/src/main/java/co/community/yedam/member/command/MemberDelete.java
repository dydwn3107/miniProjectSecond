package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		dao.memberDelete(vo);
		request.setAttribute("message", "회원탈퇴가 정상적으로 처리 되었습니다.");
		HttpSession hs = request.getSession();
		hs.invalidate();
		
		return "main/member/memberMessage";
	}

}
