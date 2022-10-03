package co.community.yedam.cafeInfo.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.cafeInfo.service.CafeInfoService;
import co.community.yedam.cafeInfo.service.CafeInfoServiceImpl;
import co.community.yedam.cafeInfo.service.CafeInfoVO;
import co.community.yedam.common.Command;

public class CafeInfoUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 스터디 카페 수정 폼으로
		CafeInfoService dao = new CafeInfoServiceImpl();
		CafeInfoVO cafeInfoVO = new CafeInfoVO();
		
		cafeInfoVO.setCafeInfoId(Integer.valueOf(request.getParameter("cafeInfoId")));
		CafeInfoVO vo = dao.cafeInfoSelect(cafeInfoVO);
		
		// 해쉬태그 수에 따라서 나눠 담아 내려주기.
				String[] hashtags = vo.getCafeInfoHashtag().split(" ");
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
		
		
		request.setAttribute("cafeInfo", vo);
		return "cafeInfo/cafeInfo/cafeInfoUpdateForm";
	}

}
