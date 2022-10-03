package co.community.yedam.foodInfo.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoService;
import co.community.yedam.foodInfo.service.FoodInfoServiceImpl;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class FoodInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 맛집 메인페이지로
		FoodInfoService dao = new FoodInfoServiceImpl();
		List<FoodInfoVO> list = dao.foodInfoSelectList();
		request.setAttribute("foodList", list);
		return "foodInfo/foodInfo/foodInfo";
	}

}
