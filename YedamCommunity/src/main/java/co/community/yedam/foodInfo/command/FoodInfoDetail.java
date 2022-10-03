package co.community.yedam.foodInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoService;
import co.community.yedam.foodInfo.service.FoodInfoServiceImpl;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class FoodInfoDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 맛집 상세보기 페이지로
		FoodInfoService dao = new FoodInfoServiceImpl();
		FoodInfoVO foodInfoVO = new FoodInfoVO();
		foodInfoVO.setFoodInfoId(Integer.valueOf(request.getParameter("foodInfoId")));
		
		FoodInfoVO vo = dao.foodInfoSelect(foodInfoVO);
		
		request.setAttribute("foodInfo", vo);
		return "foodInfo/foodInfo/foodInfoDetail";
	}

}
