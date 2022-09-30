package co.community.yedam.freeBoard.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreeBoardVO {
	private int freeBoardId;
	private String freeBoardTitle;
	private String freeBoardSubject;
	@JsonFormat(pattern = "yyyy-MM-dd ",locale = "Asia/Seoul")
	private Date freeBoardDate;
	private String freeBoardAttech;
	private String freeBoardAttechDir;
	private int freeBoardHit;
	private int freeBoardLike;
	private String memberId; // 외래키
	
	/*
	 * ↓ <Date 타입 import 선택 시> 시분초포함 상세한 날짜정보 -> import java.util.Date 대충 날짜정보 ->
	 * import java.sql.Date
	 */
}
