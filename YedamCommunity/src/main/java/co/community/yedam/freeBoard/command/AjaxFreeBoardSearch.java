package co.community.yedam.freeBoard.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.community.yedam.common.Command;
import co.community.yedam.freeBoard.service.FreeBoardService;
import co.community.yedam.freeBoard.service.FreeBoardServiceImpl;
import co.community.yedam.freeBoard.service.FreeBoardVO;

public class AjaxFreeBoardSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// Ajax 검색(비동기)
		FreeBoardService dao = new FreeBoardServiceImpl();
		List<FreeBoardVO> list = new ArrayList<FreeBoardVO>();
		ObjectMapper objectMapper = new ObjectMapper();  //json객체를 사용하기 위해
		
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		list = dao.freeBoardSearchList(key, val);
		for (FreeBoardVO vo : list) {
			System.out.println("list의 타이틀: " + vo.getFreeBoardTitle());
		}
		String str = "ajax:";
		try {
			str = str + objectMapper.writeValueAsString(list);//자바 객체를 json으로 변경
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} 
		return str;
	}

}
