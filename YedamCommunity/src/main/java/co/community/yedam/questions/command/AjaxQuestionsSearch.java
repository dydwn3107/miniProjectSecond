package co.community.yedam.questions.command;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class AjaxQuestionsSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// Ajax 검색(비동기)
				questionsService dao = new questionsServiceImpl();
				List<questionsVO> list = new ArrayList<questionsVO>();
				ObjectMapper objectMapper = new ObjectMapper();  //json객체를 사용하기 위해
//				objectMapper.registerModule(new JavaTimeModule());
				
				String key = request.getParameter("key");
				String val = request.getParameter("val");

				list = dao.questionsSearchList(key, val);
				String str = "ajax:";
				try {
					str = str + objectMapper.writeValueAsString(list);//자바 객체를 json으로 변경
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				} 
				return str;
			}
}
