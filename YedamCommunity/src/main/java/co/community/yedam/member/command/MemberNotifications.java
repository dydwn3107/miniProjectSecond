package co.community.yedam.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class MemberNotifications implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		List<questionsVO> list = new ArrayList<questionsVO>();
		
		list = dao.questionsSelectList();
		request.setAttribute("list", list);
		
		return "noTiles:member/memberNotifications";
	}

}