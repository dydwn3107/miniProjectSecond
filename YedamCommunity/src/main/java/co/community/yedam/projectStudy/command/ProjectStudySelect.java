package co.community.yedam.projectStudy.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 모집글 상세글 가져오기.
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		ProjectStudyVO projectStudyVO = new ProjectStudyVO();
		projectStudyVO.setProjectStudyId(Integer.valueOf(request.getParameter("projectStudyId")));
		
		ProjectStudyVO vo = dao.projectStudySelect(projectStudyVO);
		if (vo != null) {
			dao.projectStudyHitUpdate(vo.getProjectStudyId());
			request.setAttribute("card", vo);
		}
		
		return "projectStudy/projectStudy/projectStudySelectCard";
	}

}
