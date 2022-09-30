package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 수정폼 호출
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		vo.setQuestionsId(Integer.valueOf(request.getParameter("questionsId")));
		vo=dao.questionsSelect(vo);
		request.setAttribute("vo", vo);

		return "main/questions/questionsEditForm";

}
}
