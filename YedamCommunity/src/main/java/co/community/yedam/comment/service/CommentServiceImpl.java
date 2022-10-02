package co.community.yedam.comment.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class CommentServiceImpl implements CommentService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private CommentMapper map = sqlSession.getMapper(CommentMapper.class);

	@Override
	public List<CommentVO> commentList(int id) {
		return map.commentList(id);
	}

	@Override
	public int insertComment(CommentVO vo) {
		return map.insertComment(vo);
	}

	@Override
	public int deleteComment(CommentVO vo) {
		return map.deleteComment(vo);
	}

	@Override
	public int updateComment(CommentVO vo) {
		return map.updateComment(vo);
	}

}
