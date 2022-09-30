package co.community.yedam.questions.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		String viewPage="main/questions/questionsError";
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		
		
		vo.setQuestionsId(Integer.valueOf(request.getParameter("questionsId")));
		vo.setQuestionsDate(Date.valueOf(request.getParameter("questionsDate")));
		vo.setQuestionsTitle(request.getParameter("questionsTitle"));
		vo.setQuestionsContent(request.getParameter("questionsContent"));
		System.out.println("vo: "+vo);

		System.out.println("title:"+request.getParameter("questionsTitle"));
		System.out.println(request.getParameter("questionsId"));
		System.out.println(request.getParameter("questionsContent"));
		System.out.println(request.getParameter("questionsDate"));

		
		
		
		int n =dao.questionsUpdate(vo);
		
		

		if(n != 0) {
			request.setAttribute("id", vo.getQuestionsId());
			viewPage="questionsSelectList.do";
		}else {
			request.setAttribute("message", "게시글 수정 실패하였습니다.!");
		}
		
		return viewPage;
	
		
	}

}
