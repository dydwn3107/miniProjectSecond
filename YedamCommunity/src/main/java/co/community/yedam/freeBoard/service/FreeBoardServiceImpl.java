package co.community.yedam.freeBoard.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class FreeBoardServiceImpl implements FreeBoardService {

	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private FreeBoardMapper map = sqlSession.getMapper(FreeBoardMapper.class);

	@Override
	public List<FreeBoardVO> freeBoardSelectList() {
		return map.freeBoardSelectList();
	}

	@Override
	public FreeBoardVO freeBoardSelect(FreeBoardVO vo) {
		return map.freeBoardSelect(vo);
	}

	@Override
	public int freeBoardInsert(FreeBoardVO vo) {
		return map.freeBoardInsert(vo);
	}

	@Override
	public int freeBoardDelete(FreeBoardVO vo) {
		return map.freeBoardDelete(vo);
	}

	@Override
	public int freeBoardUpdate(FreeBoardVO vo) {
		return map.freeBoardUpdate(vo);
	}

	@Override
	public int freeBoardHitUpdate(int id) {
		return map.freeBoardHitUpdate(id);
	}

	@Override
	public int freeBoardCount() {
		return map.freeBoardCount();
	}

	@Override
	public List<FreeBoardVO> freeBoardSearchList(String key, String val) {
		return map.freeBoardSearchList(key, val);
	}

	@Override
	public int freeBoardLikeUpdate(int id) {
		return map.freeBoardLikeUpdate(id);
	}

}
