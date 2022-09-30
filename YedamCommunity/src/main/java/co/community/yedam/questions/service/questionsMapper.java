package co.community.yedam.questions.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface questionsMapper {
	// service랑 같게 하되 넘기는 값에 따라 달라짐
	
	List<questionsVO> questionsSelectList();
	questionsVO questionsSelect(questionsVO vo);
	int questionsInsert(questionsVO vo);
	int questionsUpdate(questionsVO vo);
	int questionsDelete(questionsVO vo);
	
	
	List<questionsVO> questionsSearchList(@Param("key") String key, @Param("val") String val);  //게시글 검색
	
	
	
	
	// 매개변수가 2개일때는 각각 앞에 @Param을 붙여줘야함.
	// List<SampleVO> SampleSearchList(@Param("key") String key, @Param("val") String val);
	
}
