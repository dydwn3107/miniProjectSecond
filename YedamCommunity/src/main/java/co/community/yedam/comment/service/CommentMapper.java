package co.community.yedam.comment.service;

import java.util.List;

public interface CommentMapper {
	List<CommentVO> commentList(int id);
	int insertComment(CommentVO vo);
	int deleteComment(CommentVO vo);
	int updateComment(CommentVO vo);
}
