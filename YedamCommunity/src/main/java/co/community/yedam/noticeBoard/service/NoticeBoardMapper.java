package co.community.yedam.noticeBoard.service;

import java.util.List;

public interface NoticeBoardMapper {
	List<NoticeBoardVO> noticeBoardSelectList(); // 리스트, 전체목록 가져오기
	
	NoticeBoardVO noticeBoardSelect(NoticeBoardVO vo); // 한명의 정보가져올때 vo에다 담는것, 로그인 시 사용

	int noticeBoardInsert(NoticeBoardVO vo); // 데이터 추가

	int noticeBoardUpdate(NoticeBoardVO vo); // 데이터 갱신

	int noticeBoardDelete(NoticeBoardVO vo); // 데이터 삭제

	boolean isMemberId(String id);
	
	int noticeBoardHitUpdate(int id);
}
