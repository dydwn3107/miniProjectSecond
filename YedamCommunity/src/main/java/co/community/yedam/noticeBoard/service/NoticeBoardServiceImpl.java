package co.community.yedam.noticeBoard.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class NoticeBoardServiceImpl implements NoticeBoardService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private NoticeBoardMapper map = sqlSession.getMapper(NoticeBoardMapper.class);
	
	@Override
	public List<NoticeBoardVO> noticeBoardSelectList() {
		return map.noticeBoardSelectList();
	}

	@Override
	public NoticeBoardVO noticeBoardSelect(NoticeBoardVO vo) {
		return map.noticeBoardSelect(vo);
	}

	@Override
	public int noticeBoardInsert(NoticeBoardVO vo) {
		return map.noticeBoardInsert(vo);
	}

	@Override
	public int noticeBoardUpdate(NoticeBoardVO vo) {
		return map.noticeBoardUpdate(vo);
	}

	@Override
	public int noticeBoardDelete(NoticeBoardVO vo) {
		return map.noticeBoardDelete(vo);
	}

	@Override
	public boolean isMemberId(String id) {
		return map.isMemberId(id);
	}

	@Override
	public int noticeBoardHitUpdate(int id) {
		// TODO Auto-generated method stub
		return map.noticeBoardHitUpdate(id);
	}

}
