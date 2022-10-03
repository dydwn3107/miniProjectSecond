package co.community.yedam.foodInfo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class FoodInfoServiceImpl implements FoodInfoService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private FoodInfoMapper map = sqlSession.getMapper(FoodInfoMapper.class);
	
	@Override
	public List<FoodInfoVO> foodInfoSelectList() {
		return map.foodInfoSelectList();
	}

	@Override
	public FoodInfoVO foodInfoSelect(FoodInfoVO vo) {
		return map.foodInfoSelect(vo);
	}

	@Override
	public int foodInfoInsert(FoodInfoVO vo) {
		return map.foodInfoInsert(vo);
	}

	@Override
	public int foodInfoUpdate(FoodInfoVO vo) {
		return map.foodInfoUpdate(vo);
	}

	@Override
	public int foodInfoDelete(FoodInfoVO vo) {
		return map.foodInfoDelete(vo);
	}

}
