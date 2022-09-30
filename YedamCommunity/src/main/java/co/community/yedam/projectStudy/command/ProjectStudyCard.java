package co.community.yedam.projectStudy.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.projectStudy.service.ProjectStudyService;
import co.community.yedam.projectStudy.service.ProjectStudyServiceImpl;
import co.community.yedam.projectStudy.service.ProjectStudyVO;

public class ProjectStudyCard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 전체 카드 가져오기
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
		return "projectStudy/projectStudy/projectStudy";

		/*
		 * ajax로 해보려다 실패...
		 * 
		 * JsonArray arr = new JsonArray(); for (ProjectStudyVO vo : list) { JsonObject
		 * obj = new JsonObject(); obj.addProperty("projectStudyId",
		 * vo.getProjectStudyId()); obj.addProperty("memberId", vo.getMemberId());
		 * obj.addProperty("projectStudyType", vo.getProjectStudyType());
		 * obj.addProperty("projectStudyonoffline", vo.getProjectStudyonoffline());
		 * obj.addProperty("projectStudyPersonNum", vo.getProjectStudyPersonNum());
		 * obj.addProperty("projectStudyStart", vo.getProjectStudyStartDate().toString());
		 * obj.addProperty("projectStudyTel", vo.getProjectStudyContact());
		 * obj.addProperty("projectStudyPeriod", vo.getProjectStudyPeriod());
		 * obj.addProperty("projectStudyLanguage", vo.getProjectStudyLanguage());
		 * obj.addProperty("projectStudyHit", vo.getProjectStudyHit());
		 * obj.addProperty("projectStudyTitle", vo.getProjectStudyTitle());
		 * obj.addProperty("projectStudySubject", vo.getProjectStudySubject());
		 * arr.add(obj); }
		 * 
		 * Gson gson = new GsonBuilder().create(); // instance 생성.
		 * 
		 * String json = gson.toJson(arr); // toJson메소드 try {
		 * response.setContentType("text/json;charset=utf-8");
		 * response.setCharacterEncoding("utf-8"); response.getWriter().print(json); }
		 * catch (IOException e) { e.printStackTrace(); } // 출력스트림으로 출력.
		 * 
		 * return "ajax:pass";
		 */

	}

}
