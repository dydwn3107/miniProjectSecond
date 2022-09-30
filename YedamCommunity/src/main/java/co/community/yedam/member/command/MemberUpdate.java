package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberEmail(request.getParameter("memberEmail"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAddress(request.getParameter("memberAddress"));
		vo.setMemberBirth(request.getParameter("memberBirth"));
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println(vo.getMemberName());
		int n = dao.memberUpdate(vo);
		if (n != 0) {
			vo = dao.memberSelect(vo);
			request.setAttribute("vo", vo);
			request.setAttribute("message", "정보 수정이 완료되었습니다.");
		} else {
			request.setAttribute("message", "데이터가 수정되지 않았습니다.");
		}
		return "main/main/main";
	}

}
