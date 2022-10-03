package co.community.yedam.foodInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class FoodInfoInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 맛집 새글쓰기 폼으로
		return "foodInfo/foodInfo/foodInfoInsertForm";
	}

}
