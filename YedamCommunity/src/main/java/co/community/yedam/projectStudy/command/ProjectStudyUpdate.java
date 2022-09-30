package co.community.yedam.projectStudy.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 모집글 수정.
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		ProjectStudyVO projectStudyVO = new ProjectStudyVO();
		
		projectStudyVO.setProjectStudyId(Integer.valueOf(request.getParameter("projectStudyId")));
		projectStudyVO.setProjectStudyType(request.getParameter("projectStudyType"));
		projectStudyVO.setProjectStudyonoffline(request.getParameter("projectStudyonoffline"));
		projectStudyVO.setProjectStudyPersonNum(request.getParameter("projectStudyPersonNum"));
		projectStudyVO.setProjectStudyStartDate(Date.valueOf(request.getParameter("projectStudyStartDate")));
		projectStudyVO.setProjectStudyContact(request.getParameter("projectStudyContact"));
		projectStudyVO.setProjectStudyPeriod(request.getParameter("projectStudyPeriod"));
		projectStudyVO.setProjectStudyLanguage(request.getParameter("projectStudyLanguage"));
		projectStudyVO.setProjectStudyTitle(request.getParameter("projectStudyTitle"));
		projectStudyVO.setProjectStudySubject(request.getParameter("projectStudySubject"));
		
		// 수정 후 성공 시: 업데이트 된 정보 가지고 와서 내려주기
		// 수정 실패 시: 기존 정보와 함께 메세지도 같이 담아 내려주기
		int result = dao.projectStudyUpdate(projectStudyVO);
		
		if (result != 0) {
			ProjectStudyVO vo = dao.projectStudySelect(projectStudyVO);
			request.setAttribute("card", vo);
		} else {
			request.setAttribute("card", projectStudyVO);
			request.setAttribute("projectStudyUpdateMessage", "모집글 수정에 실패했습니다.");
		}
		
		return "projectStudy/projectStudy/projectStudySelectCard";
	}

}
