package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 모집글 삭제 후 전체를 가져와서 메인페이지로 내려주기
		// 실패시 원래 있던 상세보기로 실패 메세지와 함께 내려가기.
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		ProjectStudyVO projectStudyVO = new ProjectStudyVO();
		projectStudyVO.setProjectStudyId(Integer.valueOf(request.getParameter("projectStudyId")));

		int result = dao.projectStudyDelete(projectStudyVO);
		String viewPage = "projectStudy/projectStudy/projectStudy";
		
		if (result != 0) {
			List<ProjectStudyVO> list = dao.projectStudySelectList();
			request.setAttribute("list", list);
		} else {
			ProjectStudyVO vo = dao.projectStudySelect(projectStudyVO);
			request.setAttribute("card", vo);
			request.setAttribute("projectStudyDeleteMessage", "모집글 삭제에 실패했습니다.");
			viewPage = "projectStudy/projectStudy/projectStudySelectCard";
			
		}
		
		return viewPage;
	}

}
