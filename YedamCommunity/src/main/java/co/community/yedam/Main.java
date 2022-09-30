package co.community.yedam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;

public class Main implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "noTiles:/main/main";
	}

}
