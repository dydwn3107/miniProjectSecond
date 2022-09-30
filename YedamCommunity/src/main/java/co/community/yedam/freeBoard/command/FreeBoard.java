package co.community.yedam.freeBoard.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		FreeBoardService dao = new FreeBoardServiceImpl();
		List<FreeBoardVO> list = new ArrayList<FreeBoardVO>();
		list = dao.freeBoardSelectList();
		request.setAttribute("freeBoards", list);
		
		return "main/freeBoard/freeBoard";
	}

}
