package co.community.yedam.noticeBoard.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		String viewPage = "main/notice/noticeBoardError";
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();

		vo.setNoticeBoardTitle(request.getParameter("noticeBoardTitle"));
		vo.setNoticeBoardSubject(request.getParameter("noticeBoardSubject"));
//		vo.setNoticeBoardDate(Date.valueOf(request.getParameter("noticeBoardDate")));
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println(vo);
		int no = dao.noticeBoardInsert(vo);
		if (no != 0) {
			viewPage = "noticeBoard.do";
		} else {
			request.setAttribute("message", "게시글 등록이 실패하였습니다");
		}
		return viewPage;
	}

}
