package co.community.yedam.cafeInfo.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.cafeInfo.service.CafeInfoService;
import co.community.yedam.cafeInfo.service.CafeInfoServiceImpl;
import co.community.yedam.cafeInfo.service.CafeInfoVO;
import co.community.yedam.common.Command;

public class CafeInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 스터디 카페 메인 페이지
		CafeInfoService dao = new CafeInfoServiceImpl();
		List<CafeInfoVO> list = dao.cafeInfoSelectList();
		
		request.setAttribute("cafeList", list);
		return "cafeInfo/cafeInfo/cafeInfo";
	}

}
