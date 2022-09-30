package co.community.yedam.questions.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter

@Setter

public class questionsVO {
	
	private int questionsId;
	private String questionsTitle;
	private String questionsContent;
	@JsonFormat(pattern = "yyyy-MM-dd ",locale = "Asia/Seoul")

	private Date questionsDate;
	private String memberId; //외래키
	
	
}
