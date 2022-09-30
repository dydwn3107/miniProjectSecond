package co.community.yedam.freeBoard.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface FreeBoardService {
	List<FreeBoardVO> freeBoardSelectList();
	FreeBoardVO freeBoardSelect(FreeBoardVO vo);
	int freeBoardInsert(FreeBoardVO vo);
	int freeBoardDelete(FreeBoardVO vo);
	int freeBoardUpdate(FreeBoardVO vo);
	int freeBoardHitUpdate(int id);
	int freeBoardCount();
	int freeBoardLikeUpdate(int id);
	
	List<FreeBoardVO> freeBoardSearchList(@Param("key") String key, @Param("val") String val);  //게시글 검색
}
