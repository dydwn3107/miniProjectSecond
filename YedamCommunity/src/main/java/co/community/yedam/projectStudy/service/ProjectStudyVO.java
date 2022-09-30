package co.community.yedam.projectStudy.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectStudyVO {
/*
	"PROJECT_STUDY_ID" NUMBER NOT NULL,
	"MEMBER_ID"	VARCHAR2(50) NOT NULL,
	"PROJECT_STUDY_TYPE" VARCHAR2(20),
	"PROJECT_STUDY_ONOFFLINE" VARCHAR2(20) ,
	"PROJECT_STUDY_PERSON_NUM" VARCHAR2(50),
	"PROJECT_STUDY_START_DATE" DATE,
	"PROJECT_STUDY_CONTACT" VARCHAR2(20),
	"PROJECT_STUDY_PERIOD" VARCHAR2(50),
	"PROJECT_STUDY_LANGUAGE" VARCHAR2(250),
	"PROJECT_STUDY_HIT" NUMBER,	
	"PROJECT_STUDY_TITLE" VARCHAR(250),	
	"PROJECT_STUDY_SUBJECT" VARCHAR(4000),	
 */
	private int projectStudyId;
	private String memberId;
	private String projectStudyType;
	private String projectStudyonoffline;
	private String projectStudyPersonNum;
	private Date projectStudyStartDate;
	private String projectStudyContact;
	private String projectStudyPeriod;
	private String projectStudyLanguage;
	private int projectStudyHit;
	private String projectStudyTitle;
	private String projectStudySubject;
}
