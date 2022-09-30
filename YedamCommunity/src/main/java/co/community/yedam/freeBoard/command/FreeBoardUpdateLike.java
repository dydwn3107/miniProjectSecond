package co.community.yedam.freeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardUpdateLike implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 목록 상세 조회하기.
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeBoardId(Integer.valueOf(request.getParameter("deleteFreeBoardId")));
		vo = dao.freeBoardSelect(vo);
		request.setAttribute("freeBoard", vo);
		
		int result = dao.freeBoardLikeUpdate(vo.getFreeBoardId());
		if(result != 0) {
			request.setAttribute("message", "좋아요!");
		} else {
			request.setAttribute("message", "1번만 누를 수 있어요!");
		}
		
		FreeBoardVO resultVO = dao.freeBoardSelect(vo);
		if (resultVO != null) {
			request.setAttribute("vo", resultVO);
		}
		
		return "main/freeBoard/freeBoardSelect";

	}

}
