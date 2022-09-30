package co.community.yedam.projectStudy.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class ProjectStudyInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로젝트스터디 새글쓰기 form으로
		return "projectStudy/projectStudy/projectStudyInsertForm";
	}

}
