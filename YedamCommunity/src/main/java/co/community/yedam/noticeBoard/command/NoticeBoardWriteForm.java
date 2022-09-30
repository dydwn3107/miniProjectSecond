package co.community.yedam.noticeBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class NoticeBoardWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "main/notice/noticeBoardWriteForm";
	}

}
