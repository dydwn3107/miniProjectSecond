package co.community.yedam.noticeBoard.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoard implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		List<NoticeBoardVO> list = dao.noticeBoardSelectList();
		request.setAttribute("list", list);
		return "main/notice/noticeBoard";
	}

}
