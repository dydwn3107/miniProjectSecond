package co.community.yedam.freeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 자유게시판 글 삭제.
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeBoardId(Integer.valueOf(request.getParameter("deleteFreeBoardId")));
		System.out.println(vo.getFreeBoardId()); 
		int n = dao.freeBoardDelete(vo);
		
		String viewPage = "main/freeboard/freeBoardError";
		
		if(n != 0) {
			request.setAttribute("vo", vo);
			return "freeBoard.do";
		} else {
			request.setAttribute("message", "게시글 작성에 실패했습니다.");
		}
		
		return viewPage;
	}

}
