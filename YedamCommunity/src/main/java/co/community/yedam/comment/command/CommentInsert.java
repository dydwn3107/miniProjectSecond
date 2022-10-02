package co.community.yedam.comment.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import co.community.yedam.comment.service.CommentService;
import co.community.yedam.comment.service.CommentServiceImpl;
import co.community.yedam.comment.service.CommentVO;
import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class CommentInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentService dao = new CommentServiceImpl();
		CommentVO vo = new CommentVO();
		HttpSession session = request.getSession();
		
		vo.setFreeBoardCommentSubject(request.getParameter("commentSubject"));
		vo.setFreeBoardId(Integer.valueOf(request.getParameter("freeBoardId")));
		vo.setMemberId(session.getAttribute("memberId").toString());
		
		
		System.out.println(request.getParameter("memberId"));
	
		int n = dao.insertComment(vo);
		
		String viewPage = "";
	
		FreeBoardService dao2 = new FreeBoardServiceImpl();
		List<FreeBoardVO> list = new ArrayList<FreeBoardVO>();
		list = dao2.freeBoardSelectList();
		request.setAttribute("freeBoards", list);
		
		
		if (n != 0) {
			viewPage = "freeBoard.do";
		} else {
			request.setAttribute("message", "댓글 등록에 실패하였습니다.");
			viewPage = "main/freeBoard/freeBoardError";
		}

		return viewPage;
		
	}

}
