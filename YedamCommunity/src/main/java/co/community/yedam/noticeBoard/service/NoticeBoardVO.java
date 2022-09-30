package co.community.yedam.noticeBoard.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeBoardVO {
	private int noticeBoardId;
	private String noticeBoardTitle;
	private String noticeBoardSubject;
	@JsonFormat(pattern = "yyyy-MM-dd ",locale = "Asia/Seoul")
	private Date noticeBoardDate;
	private int noticeBoardHit;
	private String memberId;
}
