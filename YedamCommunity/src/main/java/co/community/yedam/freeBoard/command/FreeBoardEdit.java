package co.community.yedam.freeBoard.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class FreeBoardEdit implements Command {
	private String saveFolder = "C:\\BoardFileUpload"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8"; // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024 * 1024 * 1024; // 업로드할 파일 최대 사이즈

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 게시글 수정
		FreeBoardService dao = new FreeBoardServiceImpl();
		FreeBoardVO vo = new FreeBoardVO();
		
		String viewPage = "main/freeBoard/freeBoardError";
		
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("ufile"); // 물리적 위치에 파일저장.  여기의 file이라는 것은 noticeWriteForm.jsp 의 id,name값.
			String originalFileName = multi.getOriginalFileName("ufile"); // 실제파일명
			
			vo.setFreeBoardId(Integer.valueOf(multi.getParameter("freeBoardId")));
			vo.setFreeBoardTitle(multi.getParameter("freeBoardTitle"));
			vo.setFreeBoardSubject(multi.getParameter("board_content"));
			vo.setFreeBoardAttech(originalFileName);
			vo.setFreeBoardAttechDir(saveFolder + File.separator + fileName);
			vo.setFreeBoardHit(Integer.valueOf(multi.getParameter("freeBoardHit")));
			vo.setFreeBoardLike(Integer.valueOf(multi.getParameter("freeBoardLike")));
			vo.setMemberId(multi.getParameter("memberId"));

		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

//		System.out.println("id: " + vo.getFreeBoardId());
//		System.out.println("writer: " + vo.getMemberId());
//		System.out.println("date: " + vo.getFreeBoardDate());
//		System.out.println("title: " + vo.getFreeBoardTitle());
//		System.out.println("subject: " + vo.getFreeBoardSubject());
//		System.out.println("attech: " + vo.getFreeBoardAttech());
//		System.out.println("directory: " + vo.getFreeBoardAttechDir());

		int result = dao.freeBoardUpdate(vo);

		if (result != 0) {
			FreeBoardVO resultVO = dao.freeBoardSelect(vo);
			request.setAttribute("freeBoard", resultVO);
			viewPage = "main/freeBoard/freeBoardSelect"; // 수정 완료시 목록으로 돌아감
		} else {
			request.setAttribute("message", "게시글 수정에 실패했습니다.");
		}

		return viewPage;
	}

}
