package co.community.yedam.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class MemberSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		List<MemberVO> list = new ArrayList<>();
		list = dao.memberSelectList();

		request.setAttribute("members", list);
		return "main/member/memberSelectList";
	}

}
