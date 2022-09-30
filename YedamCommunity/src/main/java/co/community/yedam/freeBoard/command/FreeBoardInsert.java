package co.community.yedam.freeBoard.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardInsert implements Command {
	private String saveFolder = "C:\\BoardFileUpload"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		
		String viewPage = "main/freeBoard/freeBoardError";
		
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("ufile"); // 물리적 위치에 파일저장.  여기의 file이라는 것은 noticeWriteForm.jsp 의 id,name값.
			String originalFileName = multi.getOriginalFileName("ufile"); // 실제파일명
			
			vo.setFreeBoardTitle(multi.getParameter("board_subject"));
			vo.setFreeBoardSubject(multi.getParameter("board_content"));
			vo.setFreeBoardAttech(originalFileName);
			vo.setFreeBoardAttechDir(saveFolder + File.separator + fileName);
			vo.setMemberId(multi.getParameter("memberId"));
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		int n = dao.freeBoardInsert(vo);

		if (n != 0) {
			viewPage = "freeBoard.do";
		} else {
			request.setAttribute("message", "게시글 등록에 실패하였습니다.");
		}

		return viewPage;
	}

}
