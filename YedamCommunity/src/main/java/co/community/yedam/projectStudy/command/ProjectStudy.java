package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudy implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//프로젝트스터디 전체 모집건 필터링해서 가져오기
		ProjectStudyService dao = new ProjectStudyServiceImpl();
		List<ProjectStudyVO> list = dao.projectStudySelectList();

		// 언어가 여러개면 ,를 기준으로 나누고 trim 후 언어들 앞에 # 붙이기
		for (ProjectStudyVO vo : list) {
			if (vo.getProjectStudyLanguage().indexOf(",") != -1) {
				String[] strArr = vo.getProjectStudyLanguage().split(",");

				for (int i = 0; i < strArr.length; i++) {
					strArr[i] = strArr[i].trim();
				}

				String result = String.join(" #", strArr);
				vo.setProjectStudyLanguage(result);
			}
			
		}

		request.setAttribute("list", list);

		return "projectStudy/projectStudy/projectStudy";  // 프로젝트 스터디
	}

}
