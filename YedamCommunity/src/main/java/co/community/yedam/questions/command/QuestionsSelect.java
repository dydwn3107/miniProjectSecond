package co.community.yedam.questions.command;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		vo.setQuestionsId(Integer.valueOf(request.getParameter("questionsId")));
//		System.out.println(request.getParameter("questionsId"));
//		System.out.println("void"+vo.getQuestionsId());
		vo = dao.questionsSelect(vo);
		
		if(vo != null) {
			request.setAttribute("vo", vo);
		}
		return "main/questions/questionsSelect";
	}

}
