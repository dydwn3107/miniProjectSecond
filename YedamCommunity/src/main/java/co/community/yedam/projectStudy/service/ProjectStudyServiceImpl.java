package co.community.yedam.projectStudy.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class ProjectStudyServiceImpl implements ProjectStudyService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private ProjectStudyMapper map = sqlSession.getMapper(ProjectStudyMapper.class);
	
	@Override
	public List<ProjectStudyVO> projectStudySelectList() {
		return map.projectStudySelectList();
	}

	@Override
	public ProjectStudyVO projectStudySelect(ProjectStudyVO vo) {
		return map.projectStudySelect(vo);
	}

	@Override
	public int projectStudyInsert(ProjectStudyVO vo) {
		return map.projectStudyInsert(vo);
	}

	@Override
	public int projectStudyUpdate(ProjectStudyVO vo) {
		return map.projectStudyUpdate(vo);
	}

	@Override
	public int projectStudyDelete(ProjectStudyVO vo) {
		return map.projectStudyDelete(vo);
	}

	@Override
	public List<ProjectStudyVO> projectStudyFilteredList(ProjectStudyVO vo) {
		return map.projectStudyFilteredList(vo);
	}

	@Override
	public void projectStudyHitUpdate(int id) {
		map.projectStudyHitUpdate(id);
	}

}
