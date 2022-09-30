package co.community.yedam.projectStudy.service;

import java.util.List;

public interface ProjectStudyMapper {
	List<ProjectStudyVO> projectStudySelectList(); // 모집전체목록 가져오기
	ProjectStudyVO projectStudySelect(ProjectStudyVO vo); // 모집 한 건 가져오기.
	int projectStudyInsert(ProjectStudyVO vo); // 모집 추가
	int projectStudyUpdate(ProjectStudyVO vo); // 모집 갱신
	int projectStudyDelete(ProjectStudyVO vo); // 모집 삭제
	
	List<ProjectStudyVO> projectStudyFilteredList(ProjectStudyVO vo); // 모집구분별, 언어별 필터링된 목록들 가져오기
	void projectStudyHitUpdate(int id); // 조회수 up
}
