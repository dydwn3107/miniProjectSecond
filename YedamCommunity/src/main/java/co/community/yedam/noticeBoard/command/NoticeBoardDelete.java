package co.community.yedam.noticeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 삭제
		String viewPage = "main/notice/noticeBoardError";
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();

		vo.setNoticeBoardId(Integer.valueOf(request.getParameter("id")));

		int no = dao.noticeBoardDelete(vo);
		if (no != 0) {
			request.setAttribute("vo", vo);
			viewPage = "noticeBoard.do";
		} else {
			request.setAttribute("message", "게시글 삭제를 실패하였습니다");
		}
		return viewPage;
	}

}
