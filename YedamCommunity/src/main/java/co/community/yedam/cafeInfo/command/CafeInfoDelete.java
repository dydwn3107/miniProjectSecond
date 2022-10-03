package co.community.yedam.cafeInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.cafeInfo.service.CafeInfoService;
import co.community.yedam.cafeInfo.service.CafeInfoServiceImpl;
import co.community.yedam.cafeInfo.service.CafeInfoVO;
import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class CafeInfoDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 스터디카페 삭제
		CafeInfoService dao = new CafeInfoServiceImpl(); 
		CafeInfoVO cafeInfoVO = new CafeInfoVO();
		cafeInfoVO.setCafeInfoId(Integer.valueOf(request.getParameter("cafeInfoId")));
		int result = dao.cafeInfoDelete(cafeInfoVO);

		// 실패시 메세지 전달
		if (result == 0) {
			request.setAttribute("cafeInfoDeleteMessage", "스터디카페 삭제에 실패했습니다.");
		}
		return "cafeInfo.do";
	}

}
