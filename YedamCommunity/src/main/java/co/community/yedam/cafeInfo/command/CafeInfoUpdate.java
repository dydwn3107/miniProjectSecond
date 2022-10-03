package co.community.yedam.cafeInfo.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.cafeInfo.service.CafeInfoService;
import co.community.yedam.cafeInfo.service.CafeInfoServiceImpl;
import co.community.yedam.cafeInfo.service.CafeInfoVO;
import co.community.yedam.common.Command;

public class CafeInfoUpdate implements Command {
	private String saveFolder = "C:\\fileUploadTest\\"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8";  // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024*1024*1024; // 업로드할 파일 최대 사이즈
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 스터디 카페 수정
		CafeInfoService dao = new CafeInfoServiceImpl();
		CafeInfoVO vo = new CafeInfoVO();
		
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("cafeInfoAttech"); // 물리적 위치에 파일저장
			String originalFileName = multi.getOriginalFileName("cafeInfoAttech"); // 실제파일명

			vo.setCafeInfoId(Integer.valueOf(multi.getParameter("cafeInfoId")));
			vo.setCafeInfoName(multi.getParameter("cafeInfoName"));
			vo.setCafeInfoHashtag(multi.getParameter("cafeInfoHashtag"));
			vo.setCafeInfoLink(multi.getParameter("cafeInfoLink"));
			
			vo.setCafeInfoAttech(originalFileName);
			vo.setCafeInfoAttechDir("fileUpLoad/" + fileName); // 서버의 fileUpLoad폴더에 업로드된 경로(임시)
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int result = dao.cafeInfoUpdate(vo);
		
		if (result == 0) {
			request.setAttribute("cafeInfoUpdateMessage", "스터디 카페 수정에 실패했습니다.");
		}
		
		return "cafeInfo.do";
	}

}
