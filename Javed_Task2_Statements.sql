                                             
											 ------------>***** TASK 2 *****<------------
---- All tables & columns are referenced by data dictionary and technical guide

--> Creating Database 
create database Vietnam_EduSurvey;

--> Creating Tables and relationships with Primary keys & Foreign keys
	--> Table-1
DROP TABLE General_INFO;
CREATE TABLE General_INFO
(UNIQUEID nvarchar(50) NOT null PRIMARY KEY, SCHOOLID nvarchar(max) null,CLASSID nvarchar(max) null,STUDENTID nvarchar(max) null,
YLCHILDID nvarchar(max) null,PROVINCE nvarchar(max) null,DISTRICTCODE nvarchar(max) null,LOCALITY nvarchar(max) null);

	--> Table-2
DROP TABLE Student_Quest;
CREATE TABLE Student_Quest
(GENDER  nvarchar(max) null,AGE nvarchar(max) null,ETHNICITY nvarchar(max) null,ABSENT_DAYS nvarchar(max) null,
MOM_READ nvarchar(max) null,MOM_EDUC nvarchar(max) null,DAD_READ nvarchar(max) null,DAD_EDUC nvarchar(max) null,
STDYLCHD nvarchar(max) null,STDCMPLT nvarchar(max) null,STDDINT nvarchar(max) null,STDLIV nvarchar(max) null,
STDLNGHM nvarchar(max) null,STDMEAL nvarchar(max) null,STDHLTH1 nvarchar(max) null,STDHLTH2 nvarchar(max) null,
STDHLTH3 nvarchar(max) null,STDHLTH4 nvarchar(max) null,STDHLTH5 nvarchar(max) null,STDHLTH6 nvarchar(max) null,
STDHLTH10 nvarchar(max) null,STPPLHM nvarchar(max) null,STSIBOLD nvarchar(max) null,STSIBYNG nvarchar(max) null,
STNMBOOK nvarchar(max) null,STPLSTDY nvarchar(max) null,STHVMTEL nvarchar(max) null,STHVRADO nvarchar(max) null,
STHVTELE nvarchar(max) null,STHVBIKE nvarchar(max) null,STHVMTBK nvarchar(max) null,STHVDESK nvarchar(max) null,
STHVCHR nvarchar(max) null,STHVLAMP nvarchar(max) null,STHVEFAN nvarchar(max) null,STHVAIRC nvarchar(max) null,
STHVCAR nvarchar(max) null,STHVCOMP nvarchar(max) null,STHVINTR nvarchar(max) null,STHVFRDG nvarchar(max) null,
STHVMCRO nvarchar(max) null,STHVDVD nvarchar(max) null,STHVCBLE nvarchar(max) null,STTMSCH nvarchar(max) null,
STEATLNC nvarchar(max) null,STPAYLNC nvarchar(max) null,STRPTCL1 nvarchar(max) null,STRPTCL6 nvarchar(max) null,
STRPTCL10 nvarchar(max) null,STTLTSCH nvarchar(max) null,STAGEENG nvarchar(max) null,STITMOW1 nvarchar(max) null,
STITMOW2 nvarchar(max) null,STITMOW3 nvarchar(max) null,STITMOW4 nvarchar(max) null,STITMOW5 nvarchar(max) null,
STITMOW6 nvarchar(max) null,STITMOW7 nvarchar(max) null,STITMOW8 nvarchar(max) null,STBRWBK nvarchar(max) null,
STREADFN nvarchar(max) null,STREADCH nvarchar(max) null,STREADLR nvarchar(max) null,STPLHLRD nvarchar(max) null,
STPLHL01 nvarchar(max) null,STPLHL02 nvarchar(max) null,STPLHL03 nvarchar(max) null,STPLHL04 nvarchar(max) null,
STPLHL05 nvarchar(max) null,STPLHL06 nvarchar(max) null,STPLHL07 nvarchar(max) null,STSPEN01 nvarchar(max) null,
STSPEN02 nvarchar(max) null,STSPEN03 nvarchar(max) null,STSPEN04 nvarchar(max) null,STSPEN05 nvarchar(max) null,
STATEN01 nvarchar(max) null,STATEN02 nvarchar(max) null,STATEN03 nvarchar(max) null,STATEN04 nvarchar(max) null,
STNONSCL nvarchar(max) null,STGR1001 nvarchar(max) null,STGR1002 nvarchar(max) null,STGR1003 nvarchar(max) null,
STGR1004 nvarchar(max) null,STGR1005 nvarchar(max) null,STGR1006 nvarchar(max) null,STGR1007 nvarchar(max) null,
STGR1008 nvarchar(max) null,STGR1009 nvarchar(max) null,STGR1011 nvarchar(max) null,STHGHGRD nvarchar(max) null,
UNIQUEID nvarchar(50) FOREIGN KEY REFERENCES dbo.General_INFO);
	--> Table-3
DROP TABLE Student_CognitiveTest;
CREATE TABLE Student_CognitiveTest
(ENG_TEST nvarchar(max) null, ENG_ITEM1 nvarchar(max) null, ENG_ITEM2 nvarchar(max) null, ENG_ITEM3 nvarchar(max) null, 
ENG_ITEM4 nvarchar(max) null, ENG_ITEM5 nvarchar(max) null, ENG_ITEM6 nvarchar(max) null, ENG_ITEM7 nvarchar(max) null, 
ENG_ITEM8 nvarchar(max) null, ENG_ITEM9 nvarchar(max) null, ENG_ITEM10 nvarchar(max) null,ENG_ITEM11 nvarchar(max) null, 
ENG_ITEM12 nvarchar(max) null, ENG_ITEM13 nvarchar(max) null, ENG_ITEM14 nvarchar(max) null, ENG_ITEM15 nvarchar(max) null, 
ENG_ITEM16 nvarchar(max) null, ENG_ITEM17 nvarchar(max) null, ENG_ITEM18 nvarchar(max) null, ENG_ITEM19 nvarchar(max) null, 
ENG_ITEM20 nvarchar(max) null, ENG_ITEM21 nvarchar(max) null, ENG_ITEM22 nvarchar(max) null, ENG_ITEM23 nvarchar(max) null, 
ENG_ITEM24 nvarchar(max) null, ENG_ITEM25 nvarchar(max) null, ENG_ITEM26 nvarchar(max) null, ENG_ITEM27 nvarchar(max) null, 
ENG_ITEM28 nvarchar(max) null, ENG_ITEM29 nvarchar(max) null, ENG_ITEM30 nvarchar(max) null, ENG_ITEM31 nvarchar(max) null, 
ENG_ITEM32 nvarchar(max) null, ENG_ITEM33 nvarchar(max) null, ENG_ITEM34 nvarchar(max) null, ENG_ITEM35 nvarchar(max) null, 
ENG_ITEM36 nvarchar(max) null, ENG_ITEM37 nvarchar(max) null, ENG_ITEM38 nvarchar(max) null, ENG_ITEM39 nvarchar(max) null, 
ENG_ITEM40 nvarchar(max) null, ENG_RAWSCORE nvarchar(max) null, MATH_TEST nvarchar(max) null, MATH_ITEM1 nvarchar(max) null, 
MATH_ITEM2 nvarchar(max) null, MATH_ITEM3 nvarchar(max) null, MATH_ITEM4 nvarchar(max) null, MATH_ITEM5 nvarchar(max) null, 
MATH_ITEM6 nvarchar(max) null, MATH_ITEM7 nvarchar(max) null, MATH_ITEM8 nvarchar(max) null, MATH_ITEM9 nvarchar(max) null, 
MATH_ITEM10 nvarchar(max) null,MATH_ITEM11 nvarchar(max) null, MATH_ITEM12 nvarchar(max) null, MATH_ITEM13 nvarchar(max) null, 
MATH_ITEM14 nvarchar(max) null, MATH_ITEM15 nvarchar(max) null, MATH_ITEM16 nvarchar(max) null, MATH_ITEM17 nvarchar(max) null, 
MATH_ITEM18 nvarchar(max) null, MATH_ITEM19 nvarchar(max) null, MATH_ITEM20 nvarchar(max) null, MATH_ITEM21 nvarchar(max) null, 
MATH_ITEM22 nvarchar(max) null, MATH_ITEM23 nvarchar(max) null, MATH_ITEM24 nvarchar(max) null, MATH_ITEM25 nvarchar(max) null, 
MATH_ITEM26 nvarchar(max) null, MATH_ITEM27 nvarchar(max) null, MATH_ITEM28 nvarchar(max) null, MATH_ITEM29 nvarchar(max) null, 
MATH_ITEM30 nvarchar(max) null, MATH_ITEM31 nvarchar(max) null, MATH_ITEM32 nvarchar(max) null, MATH_ITEM33 nvarchar(max) null, 
MATH_ITEM34 nvarchar(max) null, MATH_ITEM35 nvarchar(max) null, MATH_ITEM36 nvarchar(max) null, MATH_ITEM37 nvarchar(max) null, 
MATH_ITEM38 nvarchar(max) null, MATH_ITEM39 nvarchar(max) null, MATH_ITEM40 nvarchar(max) null, MATH_RAWSCORE nvarchar(max) null,
UNIQUEID nvarchar(50) FOREIGN KEY REFERENCES dbo.General_INFO);

	--> Table-4
DROP TABLE Class_Roaster;
CREATE TABLE Class_Roaster
(GRLENRL nvarchar(max) null ,BOYENRL nvarchar(max) null ,TTLENRL nvarchar(max) null ,TGRLENRL nvarchar(max) null , 
TBOYENRL  nvarchar(max) null ,TTTLENRL nvarchar(max) null ,ATDTMSY nvarchar(max) null ,ATDDFSY  nvarchar(max) null ,
TGMTHENG nvarchar(max) null ,SCALLCT  nvarchar(max) null ,GRPABLTY  nvarchar(max) null ,CLSORD1 nvarchar(max) null ,
CLSORD2 nvarchar(max) null ,SCAVLB1 nvarchar(max) null ,SCAVLB2 nvarchar(max) null ,SCAVLB3 nvarchar(max) null ,
SCAVLB4 nvarchar(max) null ,SCAVLB5 nvarchar(max) null ,SCAVLB6 nvarchar(max) null ,SCAVLB7 nvarchar(max) null ,
SCAVLB8 nvarchar(max) null ,SCAVLB9 nvarchar(max) null ,SCAVLB10 nvarchar(max) null ,SCPRDDAY nvarchar(max) null ,
SCLNONPR nvarchar(max) null ,SCMNMTIN  nvarchar(max) null ,SCMNENIN  nvarchar(max) null ,SCTXTMTH  nvarchar(max) null ,
SCTXTENG nvarchar(max) null, 
UNIQUEID nvarchar(50) FOREIGN KEY REFERENCES dbo.General_INFO);

	--> Table-5
DROP TABLE Principal_Quest;
CREATE TABLE Principal_Quest
(NUMG10CLS nvarchar(max) null,HTNTCMP nvarchar(max) null,HTDINT nvarchar(max) null,
HTAGE nvarchar(max) null,HTSEX nvarchar(max) null,HTETHGRP nvarchar(max) null,
HTRELGN nvarchar(max) null,HTMTHTNG nvarchar(max) null,HTFRMPRV nvarchar(max) null,
HTCURRLE nvarchar(max) null,HTYRSHT nvarchar(max) null,HTLVLEDC nvarchar(max) null,
HTLVLTCH nvarchar(max) null,HTEXCTCH nvarchar(max) null,HTTYPSCH nvarchar(max) null,
HTLWSGRD nvarchar(max) null,HTHGHGRD nvarchar(max) null,HTNMSTEN nvarchar(max) null,
HTNMETST nvarchar(max) null,HTYREST nvarchar(max) null,HTP135CM nvarchar(max) null,
HTPRDIST nvarchar(max) null,HTBOARD nvarchar(max) null,HTSCHAVL nvarchar(max) null,
HTMRNSTR nvarchar(max) null,HTMRNEND nvarchar(max) null,HTAFTSTR nvarchar(max) null,
HTAFTEND nvarchar(max) null,HTREGTCH nvarchar(max) null,HTNONCMP nvarchar(max) null,
HTEXTCUR nvarchar(max) null,HTNOACT nvarchar(max) null,HTNOCMCH nvarchar(max) null,
HTNOCMCL nvarchar(max) null,HTRQNMST nvarchar(max) null,HTCENMST nvarchar(max) null,
HTPTNMST nvarchar(max) null,HTRQMATH nvarchar(max) null,HTRQENG nvarchar(max) null,
HTTCHAPP nvarchar(max) null,HTREWTC1 nvarchar(max) null,HTREWTC2 nvarchar(max) null,
HTREWTC4 nvarchar(max) null,HTREWTC5 nvarchar(max) null,HTREWTC6 nvarchar(max) null,
HTREWTC7 nvarchar(max) null,HTREWTC8 nvarchar(max) null,HTDISTC1 nvarchar(max) null,
HTDISTC2 nvarchar(max) null,HTDISTC3 nvarchar(max) null,HTDISTC4 nvarchar(max) null,
HTDISTC6 nvarchar(max) null,HTDISTC7 nvarchar(max) null,HTDISTC8 nvarchar(max) null,
HTDISTC0 nvarchar(max) null,HTGNADMN nvarchar(max) null,HTACRARE nvarchar(max) null,
HTACRAETH nvarchar(max) null,HTACRAGND nvarchar(max) null,HTACRAPAY nvarchar(max) null,
HTACRAEXM nvarchar(max) null,HTACRAOTH nvarchar(max) null,HTACRAALL nvarchar(max) null,
HTAMPAID1 nvarchar(max) null,HTEXM011 nvarchar(max) null,HTEXM021 nvarchar(max) null,
HTEXM031 nvarchar(max) null,HTEXM041 nvarchar(max) null,HTEXM051 nvarchar(max) null,
HTEXM061 nvarchar(max) null,HTEXM001 nvarchar(max) null,HTAMPAID2 nvarchar(max) null,
HTEXM012 nvarchar(max) null,HTEXM022 nvarchar(max) null,HTEXM032 nvarchar(max) null,
HTEXM042 nvarchar(max) null,HTEXM052 nvarchar(max) null,HTEXM062 nvarchar(max) null,
HTEXM002 nvarchar(max) null,HTAMPAID3 nvarchar(max) null,HTEXM013 nvarchar(max) null,
HTEXM023 nvarchar(max) null,HTEXM033 nvarchar(max) null,HTEXM043 nvarchar(max) null,
HTEXM053 nvarchar(max) null,HTEXM063 nvarchar(max) null,HTEXM003 nvarchar(max) null,
HTAMPAID4 nvarchar(max) null,HTEXM014 nvarchar(max) null,HTEXM024 nvarchar(max) null,
HTEXM034 nvarchar(max) null,HTEXM044 nvarchar(max) null,HTEXM054 nvarchar(max) null,
HTEXM064 nvarchar(max) null,HTEXM004 nvarchar(max) null,HTAMPAID5 nvarchar(max) null,
HTEXM015 nvarchar(max) null,HTEXM025 nvarchar(max) null,HTEXM035 nvarchar(max) null,
HTEXM045 nvarchar(max) null,HTEXM055 nvarchar(max) null,HTEXM065 nvarchar(max) null,
HTEXM005 nvarchar(max) null,HTAMPAID6 nvarchar(max) null,HTEXM016 nvarchar(max) null,
HTEXM026 nvarchar(max) null,HTEXM036 nvarchar(max) null,HTEXM046 nvarchar(max) null,
HTEXM056 nvarchar(max) null,HTEXM066 nvarchar(max) null,HTEXM006 nvarchar(max) null,
HTAMPAID7 nvarchar(max) null,HTEXM017 nvarchar(max) null,HTEXM027 nvarchar(max) null,
HTEXM037 nvarchar(max) null,HTEXM047 nvarchar(max) null,HTEXM057 nvarchar(max) null,
HTEXM067 nvarchar(max) null,HTEXM007 nvarchar(max) null,HTAMPAID8 nvarchar(max) null,
HTEXM018 nvarchar(max) null,HTEXM028 nvarchar(max) null,HTEXM038 nvarchar(max) null,
HTEXM048 nvarchar(max) null,HTEXM058 nvarchar(max) null,HTEXM068 nvarchar(max) null,
HTEXM008 nvarchar(max) null,HTAMPAID9 nvarchar(max) null,HTEXM019 nvarchar(max) null,
HTEXM029 nvarchar(max) null,HTEXM039 nvarchar(max) null,HTEXM049 nvarchar(max) null,
HTEXM059 nvarchar(max) null,HTEXM069 nvarchar(max) null,HTEXM009 nvarchar(max) null,
HTAMPAID10 nvarchar(max) null,HTEXM0110 nvarchar(max) null,HTEXM0210 nvarchar(max) null,
HTEXM0310 nvarchar(max) null,HTEXM0410 nvarchar(max) null,HTEXM0510 nvarchar(max) null,
HTEXM0610 nvarchar(max) null,HTEXM0010 nvarchar(max) null,HTAMPAID11 nvarchar(max) null,
HTEXM0111 nvarchar(max) null,HTEXM0211 nvarchar(max) null,HTEXM0311 nvarchar(max) null,
HTEXM0411 nvarchar(max) null,HTEXM0511 nvarchar(max) null,HTEXM0611 nvarchar(max) null,
HTEXM0011 nvarchar(max) null,HTAMPAID12 nvarchar(max) null,HTEXM0112 nvarchar(max) null,
HTEXM0212 nvarchar(max) null,HTEXM0312 nvarchar(max) null,HTEXM0412 nvarchar(max) null,
HTEXM0512 nvarchar(max) null,HTEXM0612 nvarchar(max) null,HTEXM0012 nvarchar(max) null,
HTENGR10 nvarchar(max) null,HTENBY10 nvarchar(max) null,HTTLGR10 nvarchar(max) null,
HTTLBY10 nvarchar(max) null,HTENGR11 nvarchar(max) null,HTENBY11 nvarchar(max) null,
HTTLGR11 nvarchar(max) null,HTTLBY11 nvarchar(max) null,HTENGR12 nvarchar(max) null,
HTENBY12 nvarchar(max) null,HTTLGR12 nvarchar(max) null,HTTLBY12 nvarchar(max) null,
HTNMCL10 nvarchar(max) null,HTNMCL11 nvarchar(max) null,HTNMCL12 nvarchar(max) null,
HTALLC10 nvarchar(max) null,HTPRTEXP nvarchar(max) null,HTENTOT10 nvarchar(max) null,
UNIQUEID nvarchar(50) FOREIGN KEY REFERENCES dbo.General_INFO);


	----------------> ***** DATA INSERTION INTO TABLES ***** <---------------- 
	--> Data Insertion into Table-1
Insert INTO General_INFO
(UNIQUEID ,SCHOOLID,CLASSID,STUDENTID ,YLCHILDID,PROVINCE ,DISTRICTCODE,LOCALITY )
select UNIQUEID ,SCHOOLID,CLASSID,STUDENTID ,YLCHILDID,PROVINCE ,DISTRICTCODE,LOCALITY 
from [dbo].[vietnam_wave1];

	--> Data Insertion into Table-2
INSERT INTO Student_Quest(GENDER ,AGE,ETHNICITY,ABSENT_DAYS,MOM_READ,MOM_EDUC,DAD_READ,DAD_EDUC,STDYLCHD,STDCMPLT,STDDINT,STDLIV,STDLNGHM,STDMEAL,STDHLTH2,STDHLTH3,STDHLTH4,STDHLTH6,
STPPLHM,STSIBOLD,STSIBYNG,STNMBOOK,STPLSTDY,STHVMTEL,STHVRADO,STHVTELE,STHVBIKE,STHVMTBK,STHVDESK,STHVCHR,STHVLAMP,STHVEFAN,STHVAIRC,STHVCAR,STHVCOMP,STHVINTR,
STHVFRDG,STHVMCRO,STHVDVD,STHVCBLE,STTMSCH,STEATLNC,STPAYLNC,STRPTCL1,STRPTCL6,STRPTCL10,STTLTSCH,STAGEENG,STITMOW1,STITMOW3,STITMOW4,STITMOW5,STITMOW6,STITMOW8,STREADFN,
STREADCH,STREADLR,STPLHLRD,STPLHL01,STPLHL02,STPLHL03,STPLHL04,STPLHL05,STPLHL06,STPLHL07,STSPEN01,STSPEN02,STSPEN03,STSPEN04,STSPEN05,STATEN01,STATEN02,STATEN03,
STATEN04,STNONSCL,STGR1001,STGR1002,STGR1003,STGR1004,STGR1005,STGR1006,STGR1007,STGR1008,STGR1009,STGR1011,STHGHGRD,UNIQUEID)
Select GENDER ,AGE,ETHNICITY,ABSENT_DAYS,MOM_READ,MOM_EDUC,DAD_READ,DAD_EDUC,STDYLCHD,STDCMPLT,STDDINT,STDLIV,STDLNGHM,STDMEAL,STDHLTH2,STDHLTH3,STDHLTH4,STDHLTH6,
STPPLHM,STSIBOLD,STSIBYNG,STNMBOOK,STPLSTDY,STHVMTEL,STHVRADO,STHVTELE,STHVBIKE,STHVMTBK,STHVDESK,STHVCHR,STHVLAMP,STHVEFAN,STHVAIRC,STHVCAR,STHVCOMP,STHVINTR,
STHVFRDG,STHVMCRO,STHVDVD,STHVCBLE,STTMSCH,STEATLNC,STPAYLNC,STRPTCL1,STRPTCL6,STRPTCL10,STTLTSCH,STAGEENG,STITMOW1,STITMOW3,STITMOW4,STITMOW5,STITMOW6,STITMOW8,STREADFN,
STREADCH,STREADLR,STPLHLRD,STPLHL01,STPLHL02,STPLHL03,STPLHL04,STPLHL05,STPLHL06,STPLHL07,STSPEN01,STSPEN02,STSPEN03,STSPEN04,STSPEN05,STATEN01,STATEN02,STATEN03,
STATEN04,STNONSCL,STGR1001,STGR1002,STGR1003,STGR1004,STGR1005,STGR1006,STGR1007,STGR1008,STGR1009,STGR1011,STHGHGRD,UNIQUEID
from [dbo].[vietnam_wave1];
	--> Data Insertion into Table-3
INSERT INTO dbo.Student_CognitiveTest(ENG_TEST , ENG_ITEM1 , ENG_ITEM2 , ENG_ITEM3 , ENG_ITEM4 , ENG_ITEM5 , ENG_ITEM7 , ENG_ITEM8 , ENG_ITEM10 ,ENG_ITEM11 , ENG_ITEM12 , ENG_ITEM13 , 
ENG_ITEM14 , ENG_ITEM15 , ENG_ITEM16 , ENG_ITEM17 , ENG_ITEM18 , ENG_ITEM19 , ENG_ITEM20 , ENG_ITEM21 , ENG_ITEM22 , ENG_ITEM23 , ENG_ITEM24 , 
ENG_ITEM25 , ENG_ITEM26 , ENG_ITEM27 , ENG_ITEM28 , ENG_ITEM29 , ENG_ITEM30 , ENG_ITEM31 , ENG_ITEM32 , ENG_ITEM33 , ENG_ITEM34 , ENG_ITEM35 , 
ENG_ITEM36 , ENG_ITEM37 , ENG_ITEM39 , ENG_ITEM40 , ENG_RAWSCORE , MATH_TEST , MATH_ITEM1 , MATH_ITEM2 , MATH_ITEM3 , MATH_ITEM4 , MATH_ITEM5 , MATH_ITEM6 ,
 MATH_ITEM7 , MATH_ITEM8 , MATH_ITEM9 , MATH_ITEM10 ,MATH_ITEM11 , MATH_ITEM12 , MATH_ITEM13 , MATH_ITEM14 , MATH_ITEM15 ,MATH_ITEM16, MATH_ITEM17 , MATH_ITEM18 ,
MATH_ITEM19 , MATH_ITEM20 , MATH_ITEM21 , MATH_ITEM22 , MATH_ITEM23 , MATH_ITEM24 , MATH_ITEM25 , MATH_ITEM26 , MATH_ITEM27 , MATH_ITEM28 ,MATH_ITEM29, MATH_ITEM30,
MATH_ITEM31,MATH_ITEM32 , MATH_ITEM33 , MATH_ITEM34 ,MATH_ITEM35 , MATH_ITEM36 , MATH_ITEM37 , MATH_ITEM38 , MATH_ITEM39 , MATH_ITEM40 , MATH_RAWSCORE ,UNIQUEID)
SELECT ENG_TEST , ENG_ITEM1 , ENG_ITEM2 , ENG_ITEM3 , ENG_ITEM4 , ENG_ITEM5 , ENG_ITEM7 , ENG_ITEM8 , ENG_ITEM10 ,ENG_ITEM11 , ENG_ITEM12 , ENG_ITEM13 , 
ENG_ITEM14 , ENG_ITEM15 , ENG_ITEM16 , ENG_ITEM17 , ENG_ITEM18 , ENG_ITEM19 , ENG_ITEM20 , ENG_ITEM21 , ENG_ITEM22 , ENG_ITEM23 , ENG_ITEM24 , 
ENG_ITEM25 , ENG_ITEM26 , ENG_ITEM27 , ENG_ITEM28 , ENG_ITEM29 , ENG_ITEM30 , ENG_ITEM31 , ENG_ITEM32 , ENG_ITEM33 , ENG_ITEM34 , ENG_ITEM35 , 
ENG_ITEM36 , ENG_ITEM37 , ENG_ITEM39 , ENG_ITEM40 , ENG_RAWSCORE , MATH_TEST , MATH_ITEM1 , MATH_ITEM2 , MATH_ITEM3 , MATH_ITEM4 , MATH_ITEM5 , MATH_ITEM6 ,
 MATH_ITEM7 , MATH_ITEM8 , MATH_ITEM9 , MATH_ITEM10 ,MATH_ITEM11 , MATH_ITEM12 , MATH_ITEM13 , MATH_ITEM14 , MATH_ITEM15 ,MATH_ITEM16, MATH_ITEM17 , MATH_ITEM18 ,
MATH_ITEM19 , MATH_ITEM20 , MATH_ITEM21 , MATH_ITEM22 , MATH_ITEM23 , MATH_ITEM24 , MATH_ITEM25 , MATH_ITEM26 , MATH_ITEM27 , MATH_ITEM28 ,MATH_ITEM29, MATH_ITEM30,
MATH_ITEM31,MATH_ITEM32 , MATH_ITEM33 , MATH_ITEM34 ,MATH_ITEM35 , MATH_ITEM36 , MATH_ITEM37 , MATH_ITEM38 , MATH_ITEM39 , MATH_ITEM40 , MATH_RAWSCORE ,UNIQUEID
FROM [dbo].[vietnam_wave1];
	--> Data Insertion into Table-4
INSERT INTO Class_Roaster(GRLENRL ,BOYENRL ,TTLENRL ,TGRLENRL , TBOYENRL  ,TTTLENRL ,ATDTMSY ,ATDDFSY  ,TGMTHENG ,SCALLCT  ,CLSORD1 ,CLSORD2 ,SCAVLB1 ,
SCAVLB2 ,SCAVLB3 ,SCAVLB4 ,SCAVLB5 ,SCAVLB6 ,SCAVLB7 ,SCAVLB8 ,SCAVLB9 ,SCAVLB10 ,SCPRDDAY ,SCLNONPR ,SCMNMTIN  ,SCMNENIN  ,SCTXTMTH  ,SCTXTENG ,
UNIQUEID ) 
SELECT GRLENRL ,BOYENRL ,TTLENRL ,TGRLENRL , TBOYENRL  ,TTTLENRL ,ATDTMSY ,ATDDFSY  ,TGMTHENG ,SCALLCT  ,CLSORD1 ,CLSORD2 ,SCAVLB1 ,
SCAVLB2 ,SCAVLB3 ,SCAVLB4 ,SCAVLB5 ,SCAVLB6 ,SCAVLB7 ,SCAVLB8 ,SCAVLB9 ,SCAVLB10 ,SCPRDDAY ,SCLNONPR ,SCMNMTIN  ,SCMNENIN  ,SCTXTMTH  ,SCTXTENG ,UNIQUEID 
FROM [dbo].[vietnam_wave1];
	--> Data Insertion into Table-5
INSERT INTO Principal_Quest(NUMG10CLS  ,HTNTCMP  ,HTDINT  ,HTAGE  ,HTSEX  ,HTETHGRP  ,HTRELGN  ,HTMTHTNG  ,HTFRMPRV  ,HTCURRLE  ,HTYRSHT  ,HTLVLEDC  ,HTLVLTCH  ,
HTEXCTCH  ,HTTYPSCH  ,HTHGHGRD  ,HTNMSTEN  ,HTNMETST  ,HTYREST  ,HTP135CM  ,HTPRDIST  ,HTBOARD  ,HTSCHAVL  ,HTMRNSTR  ,HTMRNEND  ,HTAFTSTR  ,HTAFTEND  ,
HTREGTCH  ,HTNONCMP  ,HTEXTCUR  ,HTNOACT  ,HTNOCMCH  ,HTNOCMCL  ,HTRQNMST  ,HTCENMST  ,HTPTNMST  ,HTRQMATH  ,HTRQENG  ,HTTCHAPP  ,HTREWTC1  ,HTREWTC2  ,HTREWTC4  ,HTREWTC5  ,
HTREWTC6  ,HTREWTC7  ,HTREWTC8  ,HTDISTC1  ,HTDISTC2  ,HTDISTC3  ,HTDISTC4  ,HTDISTC6  ,HTDISTC7  ,HTDISTC8  ,HTDISTC0  ,HTGNADMN  ,HTACRARE  ,HTACRAETH  ,HTACRAGND  ,
HTACRAPAY  ,HTACRAEXM  ,HTACRAOTH  ,HTACRAALL  ,HTAMPAID1  ,HTEXM011  ,HTEXM021  ,HTEXM031  ,HTEXM041  ,HTEXM051  ,HTEXM061  ,HTEXM001  ,HTAMPAID2  ,HTEXM012  ,HTEXM022  ,
HTEXM032  ,HTEXM042  ,HTEXM052  ,HTEXM062  ,HTEXM002  ,HTAMPAID3  ,HTEXM013  ,HTEXM023  ,HTEXM033  ,HTEXM043  ,HTEXM053  ,HTEXM063  ,HTEXM003  ,HTAMPAID4  ,HTEXM014  ,HTEXM024  ,
HTEXM034  ,HTEXM044  ,HTEXM054  ,HTEXM064  ,HTEXM004  ,HTAMPAID5  ,HTEXM015  ,HTEXM025  ,HTEXM035  ,HTEXM045  ,HTEXM055  ,HTEXM065  ,HTEXM005  ,HTAMPAID6  ,HTEXM016  ,
HTEXM026  ,HTEXM036  ,HTEXM046  ,HTEXM056  ,HTEXM066  ,HTEXM006  ,HTAMPAID7  ,HTEXM017  ,HTEXM027  ,HTEXM037  ,HTEXM047  ,HTEXM057  ,HTEXM067  ,HTEXM007  ,HTAMPAID8  ,HTEXM018  ,
HTEXM028  ,HTEXM038  ,HTEXM048  ,HTEXM058  ,HTEXM068  ,HTEXM008  ,HTAMPAID9  ,HTEXM019  ,HTEXM029  ,HTEXM039  ,HTEXM049  ,HTEXM059  ,HTEXM069  ,HTEXM009  ,HTAMPAID10  ,
HTEXM0110  ,HTEXM0210  ,HTEXM0310  ,HTEXM0410  ,HTEXM0510  ,HTEXM0610  ,HTEXM0010  ,HTAMPAID11  ,HTEXM0111  ,HTEXM0211  ,HTEXM0311  ,HTEXM0411  ,HTEXM0511  ,HTEXM0611  ,
HTEXM0011  ,HTAMPAID12  ,HTEXM0112  ,HTEXM0212  ,HTEXM0312  ,HTEXM0412  ,HTEXM0512  ,HTEXM0612  ,HTEXM0012  ,HTENGR10  ,HTENBY10  ,HTTLGR10  ,HTTLBY10  ,HTENGR11  ,
HTENBY11  ,HTTLGR11  ,HTTLBY11  ,HTENGR12  ,HTENBY12  ,HTTLGR12  ,HTTLBY12  ,HTNMCL10  ,HTNMCL11  ,HTNMCL12  ,HTALLC10  ,HTPRTEXP  ,HTENTOT10  ,UNIQUEID)
SELECT NUMG10CLS  ,HTNTCMP  ,HTDINT  ,HTAGE  ,HTSEX  ,HTETHGRP  ,HTRELGN  ,HTMTHTNG  ,HTFRMPRV  ,HTCURRLE  ,HTYRSHT  ,HTLVLEDC  ,HTLVLTCH  ,
HTEXCTCH  ,HTTYPSCH  , HTHGHGRD  ,HTNMSTEN  ,HTNMETST  ,HTYREST  ,HTP135CM  ,HTPRDIST  ,HTBOARD  ,HTSCHAVL  ,HTMRNSTR  ,HTMRNEND  ,HTAFTSTR  ,HTAFTEND  ,
HTREGTCH  ,HTNONCMP  ,HTEXTCUR  ,HTNOACT  ,HTNOCMCH  ,HTNOCMCL  ,HTRQNMST  ,HTCENMST  ,HTPTNMST  ,HTRQMATH  ,HTRQENG  ,HTTCHAPP  ,HTREWTC1  ,HTREWTC2  ,HTREWTC4  ,HTREWTC5  ,
HTREWTC6  ,HTREWTC7  ,HTREWTC8  ,HTDISTC1  ,HTDISTC2  ,HTDISTC3  ,HTDISTC4  ,HTDISTC6  ,HTDISTC7  ,HTDISTC8  ,HTDISTC0  ,HTGNADMN  ,HTACRARE  ,HTACRAETH  ,HTACRAGND  ,
HTACRAPAY  ,HTACRAEXM  ,HTACRAOTH  ,HTACRAALL  ,HTAMPAID1  ,HTEXM011  ,HTEXM021  ,HTEXM031  ,HTEXM041  ,HTEXM051  ,HTEXM061  ,HTEXM001  ,HTAMPAID2  ,HTEXM012  ,HTEXM022  ,
HTEXM032  ,HTEXM042  ,HTEXM052  ,HTEXM062  ,HTEXM002  ,HTAMPAID3  ,HTEXM013  ,HTEXM023  ,HTEXM033  ,HTEXM043  ,HTEXM053  ,HTEXM063  ,HTEXM003  ,HTAMPAID4  ,HTEXM014  ,HTEXM024  ,
HTEXM034  ,HTEXM044  ,HTEXM054  ,HTEXM064  ,HTEXM004  ,HTAMPAID5  ,HTEXM015  ,HTEXM025  ,HTEXM035  ,HTEXM045  ,HTEXM055  ,HTEXM065  ,HTEXM005  ,HTAMPAID6  ,HTEXM016  ,
HTEXM026  ,HTEXM036  ,HTEXM046  ,HTEXM056  ,HTEXM066  ,HTEXM006  ,HTAMPAID7  ,HTEXM017  ,HTEXM027  ,HTEXM037  ,HTEXM047  ,HTEXM057  ,HTEXM067  ,HTEXM007  ,HTAMPAID8  ,HTEXM018  ,
HTEXM028  ,HTEXM038  ,HTEXM048  ,HTEXM058  ,HTEXM068  ,HTEXM008  ,HTAMPAID9  ,HTEXM019  ,HTEXM029  ,HTEXM039  ,HTEXM049  ,HTEXM059  ,HTEXM069  ,HTEXM009  ,HTAMPAID10  ,
HTEXM0110  ,HTEXM0210  ,HTEXM0310  ,HTEXM0410  ,HTEXM0510  ,HTEXM0610  ,HTEXM0010  ,HTAMPAID11  ,HTEXM0111  ,HTEXM0211  ,HTEXM0311  ,HTEXM0411  ,HTEXM0511  ,HTEXM0611  ,
HTEXM0011  ,HTAMPAID12  ,HTEXM0112  ,HTEXM0212  ,HTEXM0312  ,HTEXM0412  ,HTEXM0512  ,HTEXM0612  ,HTEXM0012  ,HTENGR10  ,HTENBY10  ,HTTLGR10  ,HTTLBY10  ,HTENGR11  ,
HTENBY11  ,HTTLGR11  ,HTTLBY11  ,HTENGR12  ,HTENBY12  ,HTTLGR12  ,HTTLBY12  ,HTNMCL10  ,HTNMCL11  ,HTNMCL12  ,HTALLC10  ,HTPRTEXP  ,HTENTOT10  ,UNIQUEID 
FROM [dbo].[vietnam_wave1];

--> Reports Using Views and Store Procedures

DROP VIEW Student_INFORMATION_VIEW;
CREATE VIEW Student_INFORMATION_VIEW --GENERAL VIEW
AS
select a.UNIQUEID,a.schoolid,a.classid,a.studentid,
LOCALITY= CASE
When a.LOCALITY=1 Then 'RURAL' When a.LOCALITY=2 Then 'URBAN' END,
PROVINCE= CASE
When a.PROVINCE =1 Then 'Ben Tre'
When a.PROVINCE =2 Then 'Da Nang'
When a.PROVINCE =3 Then 'Hung Yen'
When a.PROVINCE =4 Then 'Lao Cai' ELSE 'Phu Yen' END,
a.DISTRICTCODE,a.YLCHILDID,
GENDER= CASE When b.GENDER= '1' Then 'MALE' When b.GENDER= '2' Then 'FEMALE' ELSE 'Not Mentioned' END,
ETHNICITY= CASE
When b.ETHNICITY= 1 Then 'Kinh'
When b.ETHNICITY= 2 Then 'H’Mong'
When b.ETHNICITY= 3 Then 'Cham-HRoi'
When b.ETHNICITY= 4 Then 'Ede'
When b.ETHNICITY= 5 Then 'Ba Na'
When b.ETHNICITY= 6 Then 'Nung'
When b.ETHNICITY= 7 Then 'Tay'
When b.ETHNICITY= 8 Then 'Dao'
When b.ETHNICITY= 9 Then 'Giay'
When b.ETHNICITY= 10 Then 'Other'
ELSE 'Not Mentioned' END,
StudySpaceAtHome=CASE
WHEN b.STPLSTDY='1' THEN 'YES'
WHEN b.STPLSTDY='0' THEN 'NO'
ELSE 'Not Mentioned' END,
Poverty_Fee_Excemption=CASE
WHEN c.HTEXM018 = '0' THEN 'NO' WHEN c.HTEXM018 ='1' THEN 'YES' END,
SightProblem=CASE
WHEN b.STDHLTH1 = '0' THEN 'NO' WHEN b.STDHLTH1 ='1' THEN 'YES' END,
HearingProblem=CASE
WHEN b.STDHLTH2 = '0' THEN 'NO' WHEN b.STDHLTH2 ='1' THEN 'YES' END,
Headaches=CASE
WHEN b.STDHLTH3 = '0' THEN 'NO' WHEN b.STDHLTH3 ='1' THEN 'YES' END,
Fever=CASE
WHEN b.STDHLTH4 = '0' THEN 'NO' WHEN b.STDHLTH4 ='1' THEN 'YES' END,
StomachProblem=CASE
WHEN b.STDHLTH5 = '0' THEN 'NO' WHEN b.STDHLTH5 ='1' THEN 'YES' END,
OtherProblem=CASE
WHEN b.STDHLTH6 = '0' THEN 'NO' WHEN b.STDHLTH6 ='1' THEN 'YES' END,
NonSchoolWork_Hours=CASE
WHEN b.STNONSCL= '0' THEN 'None'
WHEN b.STNONSCL= '1' THEN 'Less than one hour'
WHEN b.STNONSCL= '2' THEN '1-2 hours'
WHEN b.STNONSCL= '3' THEN '2-3 hours'
WHEN b.STNONSCL= '4' THEN 'More than 4 hours'
ELSE 'Not Given' END,
STD_Attendance= CASE
WHEN d.ATDTMSY= '1' THEN 'Normal' WHEN d.ATDTMSY='2' THEN 'Higher Than Normal' WHEN d.ATDTMSY='3' THEN 'Lower Than Normal'
END,
b.AGE,b.ABSENT_DAYS
from [dbo].[General_INFO] a
INNER JOIN [dbo].[Student_Quest] b
ON a.UNIQUEID=b.UNIQUEID
INNER JOIN [dbo].Principal_Quest c
ON b.UNIQUEID=c.UNIQUEID
INNER JOIN [dbo].[Class_Roaster] d
ON c.UNIQUEID=d.UNIQUEID


	--> 1-Students MALE and FEMALE population Province Wise 
DROP VIEW MALE_FEMALE;
CREATE VIEW MALE_FEMALE AS
select  v.PROVINCE,(select DISTINCT(count(UNIQUEID)) from  dbo.Student_INFORMATION_VIEW b where b.GENDER='MALE' and v.PROVINCE=b.PROVINCE)as MALE,
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.GENDER='FEMALE' and v.PROVINCE=b.PROVINCE)as FEMALE
from dbo.Student_INFORMATION_VIEW v
group by province
	--> Executing the view
GO
SELECT * FROM MALE_FEMALE;

	--> 2-Students having study space at Home by LOCALITY
DROP VIEW STUDY_SPACE_AT_HOME;
CREATE VIEW STUDY_SPACE_AT_HOME AS
select  v.LOCALITY,(select DISTINCT(count(UNIQUEID)) from  dbo.Student_INFORMATION_VIEW b where b.StudySpaceAtHome = 'YES' and v.LOCALITY=b.LOCALITY)as [STUDY SPACE AVAILABLE],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.StudySpaceAtHome = 'NO' and v.LOCALITY=b.LOCALITY)as [STUDY SPACE NOT AVAILABLE]
from dbo.Student_INFORMATION_VIEW v
group by LOCALITY
	--> Executing the view
GO
SELECT * FROM STUDY_SPACE_AT_HOME;

	--> 3- Students who spend time on non-school work But their parents can Read & Write by Locality
DROP VIEW STD_NonSchoolWork_Hours;
CREATE VIEW STD_NonSchoolWork_Hours AS
select  v.LOCALITY,(select DISTINCT(count(UNIQUEID)) from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = 'None' and v.LOCALITY=b.LOCALITY)as [None],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = 'Less than one hour' and v.LOCALITY=b.LOCALITY)as [Less than one hour],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = '1-2 hours' and v.LOCALITY=b.LOCALITY)as [1-2 hours],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = '2-3 hours' and v.LOCALITY=b.LOCALITY)as [2-3 hours],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = 'More than 4 hours' and v.LOCALITY=b.LOCALITY)as [More than 4 hours],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.NonSchoolWork_Hours = 'Not Given' and v.LOCALITY=b.LOCALITY)as [Not Given]
from dbo.Student_INFORMATION_VIEW v
group by LOCALITY
	--> Executing the view
GO
SELECT * FROM STD_NonSchoolWork_Hours;

	--> 4- Students having Health Problems by Province
DROP VIEW STD_HealthProblems;
CREATE VIEW STD_HealthProblems
AS
select  v.PROVINCE,(select DISTINCT(count(UNIQUEID)) from  dbo.Student_INFORMATION_VIEW b where b.SightProblem = 'YES' and v.PROVINCE=b.PROVINCE)as [Sight Problem],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.HearingProblem = 'YES' and v.PROVINCE=b.PROVINCE)as [Hearing Problem],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.Headaches = 'YES' and v.PROVINCE=b.PROVINCE)as [Headaches],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.Fever = 'YES' and v.PROVINCE=b.PROVINCE)as [Fever],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.StomachProblem = 'YES' and v.PROVINCE=b.PROVINCE)as [Stomach Problem],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.OtherProblem = 'YES' and v.PROVINCE=b.PROVINCE)as [Other Problem]
from dbo.Student_INFORMATION_VIEW v
group by PROVINCE
	--> Executing the view
GO
SELECT * FROM STD_HealthProblems;

	--> 5- Students attendance during the survey Locality and Province Wise 
DROP PROCEDURE Student_Attendance;
Create Procedure Student_Attendance @Locality nvarchar(30), @Province nvarchar(30), @StudentAttendance nvarchar(30)
As
Select DISTINCT(a.UNIQUEID), STD_Attendance= CASE
WHEN b.ATDTMSY= '1' THEN 'Normal' WHEN b.ATDTMSY='2' THEN 'Higher Than Normal' WHEN b.ATDTMSY='3' THEN 'Lower Than Normal'
END,
PROVINCE= CASE
When a.PROVINCE =1 Then 'Ben Tre'
When a.PROVINCE =2 Then 'Da Nang'
When a.PROVINCE =3 Then 'Hung Yen'
When a.PROVINCE =4 Then 'Lao Cai' ELSE 'Phu Yen' END,
LOCALITY= CASE
When a.LOCALITY=1 Then 'RURAL' When a.LOCALITY=2 Then 'URBAN' END
FROM General_INFO a inner join Class_Roaster b on a.UNIQUEID=b.UNIQUEID
WHERE ATDTMSY= @StudentAttendance and LOCALITY= @Locality and PROVINCE=@Province
	--> Executing the procedure
GO
EXEC Student_Attendance @StudentAttendance='1', @Locality='2', @Province='2'

	--> 6- Students attendance during the survey Province Wise using VIEW
DROP VIEW STD_Attendance_Survey;
CREATE VIEW STD_Attendance_Survey AS
select  v.PROVINCE,(select DISTINCT(count(UNIQUEID)) from  dbo.Student_INFORMATION_VIEW b where b.STD_Attendance = 'Normal' and v.PROVINCE=b.PROVINCE)as [Normal],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.STD_Attendance ='Higher Than Normal' and v.PROVINCE=b.PROVINCE)as [Higher Than Normal],
(select count(UNIQUEID)from  dbo.Student_INFORMATION_VIEW b where b.STD_Attendance = 'Lower Than Normal' and v.PROVINCE=b.PROVINCE)as [Lower Than Normal]
from dbo.Student_INFORMATION_VIEW v
group by PROVINCE
	--> Executing the View
GO
SELECT * FROM STD_Attendance_Survey;