package co.community.yedam.freeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글 수정폼.
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeBoardId(Integer.valueOf(request.getParameter("deleteFreeBoardId")));
		vo = dao.freeBoardSelect(vo);
		request.setAttribute("vo", vo);
		
		return "main/freeBoard/freeBoardEditForm";
	}

}
