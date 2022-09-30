package co.community.yedam.noticeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();

		vo.setNoticeBoardId(Integer.valueOf(request.getParameter("id")));
		vo = dao.noticeBoardSelect(vo);
		request.setAttribute("noticeBoard", vo);

		NoticeBoardVO resultVO = dao.noticeBoardSelect(vo);
		if (vo != null) {
			dao.noticeBoardHitUpdate(resultVO.getNoticeBoardId());
			request.setAttribute("vo", vo);
		}
		return "main/notice/noticeBoardSelect";
	}

}
