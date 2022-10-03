package co.community.yedam.foodInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.foodInfo.service.FoodInfoService;
import co.community.yedam.foodInfo.service.FoodInfoServiceImpl;
import co.community.yedam.foodInfo.service.FoodInfoVO;

public class FoodInfoUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 맛집 수정
		FoodInfoService dao = new FoodInfoServiceImpl();
		FoodInfoVO foodInfoVO = new FoodInfoVO();
		
		foodInfoVO.setFoodInfoId(Integer.valueOf(request.getParameter("foodInfoId")));
		
		FoodInfoVO vo = dao.foodInfoSelect(foodInfoVO);
		
		// 해쉬태그 수에 따라서 나눠 담아 내려주기.
		String[] hashtags = vo.getFoodInfoHashtag().split(" ");
		for (int i = 0; i < hashtags.length; i++) {
			hashtags[i] = hashtags[i].replace("#", "");
		}
		
		String hashtag1 = "";
		String hashtag2 = "";
		String hashtag3 = "";
		
		switch (hashtags.length) {
		case 1:
			hashtag1 = hashtags[0];
			request.setAttribute("hashtag1", hashtag1);
			break;
		case 2:
			hashtag1 = hashtags[0];
			hashtag2 = hashtags[1];
			request.setAttribute("hashtag1", hashtag1);
			request.setAttribute("hashtag2", hashtag2);
			break;
		case 3:
			hashtag1 = hashtags[0];
			hashtag2 = hashtags[1];
			hashtag3 = hashtags[2];
			request.setAttribute("hashtag1", hashtag1);
			request.setAttribute("hashtag2", hashtag2);
			request.setAttribute("hashtag3", hashtag3);
		}

		request.setAttribute("foodInfo", vo);
		
		return "foodInfo/foodInfo/foodInfoUpdateForm";
	}

}
