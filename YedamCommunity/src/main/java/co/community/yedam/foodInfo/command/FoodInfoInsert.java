package co.community.yedam.foodInfo.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoService;
import co.community.yedam.foodInfo.service.FoodInfoServiceImpl;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class FoodInfoInsert implements Command {
	private String saveFolder = "C:\\fileUploadTest\\"; // 실제 파일을 저장할 공간
	private String charactSet = "utf-8";  // 전송되는 문자열 한글깨짐 방지(문자열 인코딩타입)
	private int maxSize = 1024*1024*1024; // 업로드할 파일 최대 사이즈
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String viewPage = "foodInfo/foodInfo/foodInfoInsertForm";
		FoodInfoService dao = new FoodInfoServiceImpl(); 
		FoodInfoVO vo = new FoodInfoVO();
		
		try {
			MultipartRequest multi =
					new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("foodInfoAttech"); // 물리적 위치에 파일저장.
			String originalFileName = multi.getOriginalFileName("foodInfoAttech"); // 실제파일명
			
			vo.setFoodInfoName(multi.getParameter("foodInfoName"));
			vo.setFoodInfoHashtag(multi.getParameter("foodInfoHashtag"));
			vo.setFoodInfoTel(multi.getParameter("foodInfoTel"));
			vo.setFoodInfoHolidays(multi.getParameter("foodInfoHolidays"));
			vo.setFoodInfoOpendays(multi.getParameter("foodInfoOpendays"));
			vo.setFoodInfoLink(multi.getParameter("foodInfoLink"));
			vo.setFoodInfoAddress(multi.getParameter("foodInfoAddress"));
			vo.setFoodInfoMenu1(multi.getParameter("foodInfoMenu1"));
			vo.setFoodInfoMenu1Price(multi.getParameter("foodInfoMenu1Price"));
			vo.setFoodInfoMenu2(multi.getParameter("foodInfoMenu2"));
			vo.setFoodInfoMenu2Price(multi.getParameter("foodInfoMenu2Price"));
			vo.setFoodInfoMap(multi.getParameter("foodInfoMap"));
			
			// 라스트오더/브레이크타임/부가사항을 적지 않았으면 비워두기(null이거나 빈값)
			if (multi.getParameter("foodInfoLastorder") != null || !multi.getParameter("foodInfoLastorder").equals("")) {
				vo.setFoodInfoLastorder(multi.getParameter("foodInfoLastorder"));
			}
			
			if (multi.getParameter("foodInfoBreaktime") != null || !multi.getParameter("foodInfoBreaktime").equals("")) {
				vo.setFoodInfoLastorder(multi.getParameter("foodInfoBreaktime"));
			}
			
			if (multi.getParameter("foodInfoAdditional") != null || !multi.getParameter("foodInfoAdditional").equals("")) {
				vo.setFoodInfoLastorder(multi.getParameter("foodInfoAdditional"));
			}
			
			vo.setFoodInfoAttech(originalFileName);
			vo.setFoodInfoAttechDir("fileUpLoad/" + fileName); // 서버의 fileUpLoad폴더에 업로드된 경로(임시)
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int result = dao.foodInfoInsert(vo);
		
		
		if (result != 0) {
			viewPage = "foodInfo.do";
		} else {
			request.setAttribute("foodInfoInsertMessage", "맛집 등록에 실패했습니다.");
		}
		
		return viewPage;
	}

}
