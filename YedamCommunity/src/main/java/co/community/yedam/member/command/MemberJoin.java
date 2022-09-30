package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버 추가 
				MemberService dao = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				vo.setMemberId(request.getParameter("memberId"));
				vo.setMemberName(request.getParameter("memberName"));
				vo.setMemberPw(request.getParameter("memberPw"));
				vo.setMemberTel(request.getParameter("memberTel"));
				vo.setMemberGender(request.getParameter("memberGender"));
				vo.setMemberBirth(request.getParameter("memberBirth"));
				vo.setMemberAddress(request.getParameter("memberAddress"));
				vo.setMemberEmail(request.getParameter("memberEmail"));
				
				int n = dao.memberInsert(vo);
				String viewPage = null;
				if(n != 0) {
					request.setAttribute("message", "★ 회원가입이 완료 되었습니다 로그인 해 주세요!!★");
					viewPage = "main/member/memberMessage";
				} else {
					request.setAttribute("message", "★ 회원가입이 실패했습니다 ★");
					viewPage = "main/member/memberMessage";;
				}
				
				return viewPage;
	}

}
