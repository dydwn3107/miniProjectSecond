package co.community.yedam.projectStudy.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 모집글 수정 폼으로 상세보기에서 본 값들고 내려가기
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
		
		request.setAttribute("card", projectStudyVO);
		return "projectStudy/projectStudy/projectStudyUpdateForm";
	}

}
