package co.community.yedam.comment.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentVO {
	int freeBoardCommentId;
	String freeBoardCommentSubject;
	@JsonFormat(pattern = "yyyy-MM-dd ", locale = "Asia/Seoul")
	Date freeBoardCommentDate;
	int freeBoardId;
	String memberId;
}
