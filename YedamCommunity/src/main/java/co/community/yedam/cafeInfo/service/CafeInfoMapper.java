package co.community.yedam.cafeInfo.service;

import java.util.List;

public interface CafeInfoMapper {
	List<CafeInfoVO> cafeInfoSelectList();
	CafeInfoVO cafeInfoSelect(CafeInfoVO vo);
	int cafeInfoInsert(CafeInfoVO vo);
	int cafeInfoUpdate(CafeInfoVO vo);
	int cafeInfoDelete(CafeInfoVO vo);
}
