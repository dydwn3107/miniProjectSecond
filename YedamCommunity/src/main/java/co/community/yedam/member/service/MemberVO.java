package co.community.yedam.member.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String memberId;
	private String memberName;
	private String memberPw;
	private String memberGender;
	private String memberBirth;
	private String memberEmail;
	private String memberAddress;
	private String memberTel;
	private Date memberCreateDate;
	private String memberAuthor;
	private int memberPoint;
	
	/*       ↓
	 * <Date 타입 import 선택 시>
	 * 시분초포함 상세한 날짜정보 -> import java.util.Date
	 *          대충 날짜정보 -> import java.sql.Date
	 */
}
