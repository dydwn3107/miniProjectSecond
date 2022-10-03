package co.community.yedam.comment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.comment.service.CommentService;
import co.community.yedam.comment.service.CommentServiceImpl;
import co.community.yedam.comment.service.CommentVO;
import co.community.yedam.common.Command;

public class CommentDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentService dao = new CommentServiceImpl();
		CommentVO vo = new CommentVO();
		
		vo.setFreeBoardCommentSubject(request.getParameter("freeBoardCommentSubject"));
		
		int n = dao.deleteComment(vo);
		String viewPage = "";
		
		if(n != 0) {
			viewPage = "main/freeBoard/freeBoard";
		} else {
			request.setAttribute("message", "댓글 삭제 실패!");
			viewPage = "main/freeBoard/freeBoardError";
		}
		return viewPage;
	}

}
