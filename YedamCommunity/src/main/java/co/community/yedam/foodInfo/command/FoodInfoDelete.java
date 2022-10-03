package co.community.yedam.foodInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoService;
import co.community.yedam.foodInfo.service.FoodInfoServiceImpl;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class FoodInfoDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 맛집 삭제
		FoodInfoService dao = new FoodInfoServiceImpl(); 
		FoodInfoVO foodInfoVO = new FoodInfoVO();
		foodInfoVO.setFoodInfoId(Integer.valueOf(request.getParameter("foodInfoId")));
		int result = dao.foodInfoDelete(foodInfoVO);
		
		String viewPage = "foodInfo.do";
		
		if (result == 0) {
			FoodInfoVO vo = dao.foodInfoSelect(foodInfoVO);
			request.setAttribute("foodInfo", vo);
			request.setAttribute("foodInfoDeleteMessage", "맛집글 삭제에 실패했습니다.");
			viewPage = "foodInfo/foodInfo/foodInfoDetail";
		}
		return viewPage;
	}

}
