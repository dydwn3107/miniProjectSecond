package co.community.yedam.freeBoard.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.comment.service.CommentService;
import co.community.yedam.comment.service.CommentServiceImpl;
import co.community.yedam.comment.service.CommentVO;
import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 목록 상세 조회하기.
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeBoardId(Integer.valueOf(request.getParameter("freeBoardId")));
		vo = dao.freeBoardSelect(vo);
		request.setAttribute("freeBoard", vo);
		
		CommentService cdao = new CommentServiceImpl();
		List<CommentVO> list = new ArrayList<CommentVO>();
		list = cdao.commentList(Integer.valueOf(request.getParameter("freeBoardId")));
		request.setAttribute("cLists", list);
		
		FreeBoardVO resultVO = dao.freeBoardSelect(vo);
		if (resultVO != null) {
			dao.freeBoardHitUpdate((resultVO.getFreeBoardId()));
			request.setAttribute("vo", resultVO);
		}
		
		return "main/freeBoard/freeBoardSelect";
	}

}
