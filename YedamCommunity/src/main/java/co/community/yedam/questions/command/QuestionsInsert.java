package co.community.yedam.questions.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPage = "main/questions/questionsError";
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		
		
//		System.out.println("안녕");
//		System.out.println(Integer.parseInt("questionsId"));
		
//		if("questionsId" == null || "questionsId".trim().equals("")) {
//			 questionsId=0;
//		}
		
		// vo.setQuestionsId(Integer.valueOf(request.getParameter("questionsId"));
		vo.setQuestionsTitle(request.getParameter("questionsTitle"));
		vo.setQuestionsContent(request.getParameter("questionsContent"));
//		vo.setQuestionsDate(Date.valueOf(request.getParameter("questionsDate")));
		vo.setMemberId(request.getParameter("memberId"));
		//vo.setQuestionsDate(Date.valueOf(request.getParameter("questionsDate")));
		
		
//		System.out.println("title="+vo.getQuestionsTitle());
//		System.out.println("content="+vo.getQuestionsContent());
//		System.out.println("date="+vo.getQuestionsDate());
//		System.out.println("memberid="+vo.getMemberId());
		//board_subject
		//board_content
		
		
		
		
		int n = dao.questionsInsert(vo);
		if(n != 0) {
			viewPage="questionsSelectList.do";
		}else {
			request.setAttribute("message", "게시글 등록이 실패하였습니다!");
		}
		return viewPage;
	}

}

