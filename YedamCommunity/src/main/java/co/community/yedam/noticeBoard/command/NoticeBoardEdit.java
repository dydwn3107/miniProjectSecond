package co.community.yedam.noticeBoard.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.noticeBoard.service.NoticeBoardService;
import co.community.yedam.noticeBoard.service.NoticeBoardServiceImpl;
import co.community.yedam.noticeBoard.service.NoticeBoardVO;

public class NoticeBoardEdit implements Command {

//	private String saveFolder = "C:\\fileUploadTest"; // 실제 파일을 저장할 공간
//	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
//	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "main/noticeBoard/noticeError";
		NoticeBoardService dao = new NoticeBoardServiceImpl();
		NoticeBoardVO vo = new NoticeBoardVO();

		try {
//			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
//					new DefaultFileRenamePolicy());
//			String fileName = multi.getFilesystemName("file");
//			String OriginalFileName = multi.getOriginalFileName(fileName);

			vo.setNoticeBoardId(Integer.valueOf(request.getParameter("noticeBoardId")));
			vo.setNoticeBoardTitle(request.getParameter("noticeBoardTitle"));
			vo.setNoticeBoardSubject(request.getParameter("noticeBoardSubject"));
			vo.setNoticeBoardDate(Date.valueOf(request.getParameter("noticeBoardDate")));
//			vo.setNoticeBoardAttech(OriginalFileName);
//			vo.setNoticeBoardAttechDir(saveFolder + File.separator + fileName);

			System.out.println(vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("id: " + vo.getNoticeBoardId());
		System.out.println("date: " + vo.getNoticeBoardDate());
		System.out.println("title: " + vo.getNoticeBoardTitle());
		System.out.println("subject: " + vo.getNoticeBoardSubject());

		int result = dao.noticeBoardUpdate(vo);

		if (result != 0) {
			NoticeBoardVO resultVO = dao.noticeBoardSelect(vo);
			request.setAttribute("vo", resultVO);
			viewPage = "noticeBoard.do"; // 수정 완료시 목록으로 돌아감
		} else {
			request.setAttribute("message", "게시글 수정에 실패했습니다.");
		}

		return viewPage;
	}

}
