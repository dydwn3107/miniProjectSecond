package co.community.yedam.cafeInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class CafeInfoInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 스터디카페 글쓰기 폼으로
		return "cafeInfo/cafeInfo/cafeInfoInsertForm";
	}

}
