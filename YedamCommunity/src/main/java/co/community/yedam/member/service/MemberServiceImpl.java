package co.community.yedam.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;


public class MemberServiceImpl implements MemberService {
	/*
	 * SqlSession 객체를 가져오고,
	 * 그 객체에 SampleMapper를 가져와서 적용한다.
	 * 그걸 바탕으로 serviceImpl과 Mapper를 연결해서
	 * "service - serviceImpl - Mapper - Mapper.xml - DB" 구간 터널이 완성된다.
	*/
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	

	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberDelete(vo);
	}

	@Override
	public boolean isIdCheck(String id) {
		// TODO Auto-generated method stub
		return map.isIdCheck(id);
	}

}
