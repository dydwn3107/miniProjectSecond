package co.community.yedam.cafeInfo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class CafeInfoServiceImpl implements CafeInfoService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private CafeInfoMapper map = sqlSession.getMapper(CafeInfoMapper.class);
	
	@Override
	public List<CafeInfoVO> cafeInfoSelectList() {
		return map.cafeInfoSelectList();
	}

	@Override
	public CafeInfoVO cafeInfoSelect(CafeInfoVO vo) {
		return map.cafeInfoSelect(vo);
	}

	@Override
	public int cafeInfoInsert(CafeInfoVO vo) {
		return map.cafeInfoInsert(vo);
	}

	@Override
	public int cafeInfoUpdate(CafeInfoVO vo) {
		return map.cafeInfoUpdate(vo);
	}

	@Override
	public int cafeInfoDelete(CafeInfoVO vo) {
		return map.cafeInfoDelete(vo);
	}

}
