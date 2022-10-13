                                             
											 ------------>***** TASK 1 *****<------------
---- All tables & columns are referenced by data dictionary and Technical Guide

--> 1. Creating Database 
create database Child_Well_Being_Monitor;

--> 2. Making new column 'childidround' in each country file
--> Adding 'childidround' in ethiopia_constructed
ALTER TABLE [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed] ADD childidround nvarchar(500) null;
UPDATE [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed] SET childidround = CONCAT(childid,round);
Select childidround from [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed];
--> Adding 'childidround' in india_constructed
ALTER TABLE [Child_Well_Being_Monitor].[dbo].[india_constructed] ADD childidround nvarchar(500) null;
UPDATE [Child_Well_Being_Monitor].[dbo].[india_constructed] SET childidround = CONCAT(childid,round);
Select childidround from [Child_Well_Being_Monitor].[dbo].[india_constructed];
--> Adding 'childidround' in peru_constructed
ALTER TABLE [Child_Well_Being_Monitor].[dbo].[peru_constructed] ADD childidround nvarchar(500) null;
UPDATE [Child_Well_Being_Monitor].[dbo].[peru_constructed] SET childidround = CONCAT(childid,round);
Select childidround from [Child_Well_Being_Monitor].[dbo].[peru_constructed];
--> Adding 'childidround' in peru_constructed
ALTER TABLE [Child_Well_Being_Monitor].[dbo].[vietnam_constructed] ADD childidround nvarchar(500) null;
UPDATE [Child_Well_Being_Monitor].[dbo].[vietnam_constructed] SET childidround = CONCAT(childid,round);
Select childidround from [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

--> Creating Tables and relationships with Primary keys & Foreign keys
	--> Table-1
CREATE TABLE Child
([childroundid] nvarchar(500) NOT null PRIMARY KEY,
[childid] nvarchar(max) NOT null,  [clustid] nvarchar(max) null,
[commid] nvarchar(max) null,[typesite] nvarchar(max) null, 
[region] nvarchar(max) null,[dint] nvarchar(max) null,
[round] nvarchar(max) null,[yc] nvarchar(max) null,
[chlocation] nvarchar(max) null);
	--> Table-2
CREATE TABLE Panel_information
([inround_hh] nvarchar(max) null,[panel] nvarchar(max) null,
[deceased] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table-3
CREATE TABLE Child_characteristics
([sex] nvarchar(max) null,
[chlang] nvarchar(max) null,[chethnic] nvarchar(max) null,
[chldrel] nvarchar(max) null,[agemon] nvarchar(max) null,
[marrcohab] nvarchar(max) null,[marrcohab_age] nvarchar(max) null,
[birth] nvarchar(max) null,[birth_age] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=4
CREATE TABLE Anthropometric_info
([chweight] nvarchar(max) null, [chheight] nvarchar(max) null,
[bmi] nvarchar(max) null,[zwfa] nvarchar(max) null,
[zhfa] nvarchar(max) null,[zbfa] nvarchar(max) null,
[zwfl] nvarchar(max) null,[fwfa] nvarchar(max) null,
[fhfa] nvarchar(max) null,[fbfa] nvarchar(max) null,
[fwfl] nvarchar(max) null,[underweight] nvarchar(max) null,
[stunting] nvarchar(max) null,[thinness] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=5
CREATE TABLE Birth_immunisation
([bwght] nvarchar(max) null,[bwdoc] nvarchar(max) null,
[numante] nvarchar(max) null,[tetanus] nvarchar(max) null,
[delivery] nvarchar(max) null,[bcg] nvarchar(max) null,
[measles] nvarchar(max) null,[polio] nvarchar(max) null,
[dpt] nvarchar(max) null,[hib] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=6
CREATE TABLE Health_wellbeing
([chmightdie] nvarchar(max) null,
[chillness] nvarchar(max) null,[chinjury] nvarchar(max) null,
[chhprob] nvarchar(max) null,[chdisability] nvarchar(max) null,
[chdisscale] nvarchar(max) null,[chhrel] nvarchar(max) null,
[chhealth] nvarchar(max) null,[cladder] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=7
CREATE TABLE Smoking_drinking
([chsmoke] nvarchar(max) null,
[chalcohol] nvarchar(max) null,[chrephealth1] nvarchar(max) null,
[chrephealth2] nvarchar(max) null,[chrephealth3] nvarchar(max) null,
[chrephealth4] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid])
);
	--> Table=8
CREATE TABLE Time_use
([hsleep] nvarchar(max) null,[hcare] nvarchar(max) null,
[hchore] nvarchar(max) null,[htask] nvarchar(max) null,
[hwork] nvarchar(max) null,[hschool] nvarchar(max) null,
[hstudy] nvarchar(max) null,[hplay] nvarchar(max) null,
[commwork] nvarchar(max) null,[commsch] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=9
CREATE TABLE Education_skills
([preprim] nvarchar(max) null,[agegr1] nvarchar(max) null,
[enrol] nvarchar(max) null,[engrade] nvarchar(max) null,
[entype] nvarchar(max) null,[hghgrade] nvarchar(max) null,
[timesch] nvarchar(max) null,[levlread] nvarchar(max) null,
[levlwrit] nvarchar(max) null,[literate] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=10
CREATE TABLE Mother_father_caregiver_characteristics
([dadid] nvarchar(max) null,[dadage] nvarchar(max) null,
[dadlive] nvarchar(max) null,[dadyrdied] nvarchar(max) null,
[dadcantread] nvarchar(max) null,[dadedu] nvarchar(max) null,
[momid] nvarchar(max) null,[momage] nvarchar(max) null,
[momlive] nvarchar(max) null,[momyrdied] nvarchar(max) null,
[momcantread] nvarchar(max) null,[momedu] nvarchar(max) null,
[careid] nvarchar(max) null,[careage] nvarchar(max) null,
[caresex] nvarchar(max) null,[carehead] nvarchar(max) null,
[carerel] nvarchar(max) null,[carecantread] nvarchar(max) null,
[caredu] nvarchar(max) null,[careladder] nvarchar(max) null,
[careldr4yrs] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=11
CREATE TABLE Household_head_characteristics
([headid] nvarchar(max) null,[headage] nvarchar(max) null,
[headsex] nvarchar(max) null,[headedu] nvarchar(max) null,
[headrel] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=12
CREATE TABLE Size_composition 
([male05] nvarchar(max) null,[male612] nvarchar(max) null,
[male1317] nvarchar(max) null,[male1860] nvarchar(max) null,
[male61] nvarchar(max) null,[female05] nvarchar(max) null,
[female612] nvarchar(max) null,[female1317] nvarchar(max) null,
[female1860] nvarchar(max) null,[female61] nvarchar(max) null,
[hhsize] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=13
CREATE TABLE [Livestock_land_house_ownership] 
(ownlandhse nvarchar(max) null,
ownhouse nvarchar(max) null,aniany nvarchar(max) null,animilk nvarchar(max) null,
anidrau nvarchar(max) null,anirumi nvarchar(max) null,anispec nvarchar(max) null,
anicowm nvarchar(max) null,anicowt nvarchar(max) null,anidonk nvarchar(max) null,
anishee nvarchar(max) null,anigoat nvarchar(max) null,anipigs nvarchar(max) null,
anipoul nvarchar(max) null,anirabb nvarchar(max) null,aniothr nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));
	--> Table=14
CREATE TABLE Credit_food_security_public_programmes
([credit] nvarchar(max) null,[foodsec] nvarchar(max) null,[hep] nvarchar(max) null,
[psnp_pw] nvarchar(max) null,[psnp_ds] nvarchar(max) null,[eap] nvarchar(max) null,
[othprog] nvarchar(max) null,[resettled] nvarchar(max) null,[pds] nvarchar(max) null,
[nregs] nvarchar(max) null,[nregs_work] nvarchar(max) null,[nregs_allow] nvarchar(max) null,
[rajiv] nvarchar(max) null,[sabla] nvarchar(max) null,[sabla_yl] nvarchar(max) null,
[ikp] nvarchar(max) null,[ikp_child] nvarchar(max) null,[juntos] nvarchar(max) null,
[bonograt] nvarchar(max) null,[sisgrat_yl] nvarchar(max) null,
[minsa_yl] nvarchar(max) null,[insur_yl] nvarchar(max) null,[beca_yl] nvarchar(max) null,
[projoven_yl] nvarchar(max) null,[molisa06] nvarchar(max) null,
[molisa09] nvarchar(max) null,[molisa10] nvarchar(max) null,[molisa11] nvarchar(max) null,
[molisa12] nvarchar(max) null,[molisa13] nvarchar(max) null,[molisa14] nvarchar(max) null,
[molisa15] nvarchar(max) null,[molisa16] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid])
);
	--> Table=15
CREATE TABLE Household_shocks
([shcrime1] nvarchar(max) null,[shcrime2] nvarchar(max) null,[shcrime3] nvarchar(max) null,
[shcrime4] nvarchar(max) null,[shcrime5] nvarchar(max) null,[shcrime6] nvarchar(max) null,
[shcrime7] nvarchar(max) null,[shcrime8] nvarchar(max) null,[shregul1] nvarchar(max) null,
[shregul2] nvarchar(max) null,[shregul3] nvarchar(max) null,[shregul4] nvarchar(max) null,
[shregul5] nvarchar(max) null,[shregul6] nvarchar(max) null,[shecon1] nvarchar(max) null,
[shecon2] nvarchar(max) null,[shecon3] nvarchar(max) null,[shecon4] nvarchar(max) null,
[shecon5] nvarchar(max) null,[shecon6] nvarchar(max) null,[shecon7] nvarchar(max) null,
[shecon8] nvarchar(max) null,[shecon9] nvarchar(max) null,[shecon10] nvarchar(max) null,
[shecon11] nvarchar(max) null,[shecon12] nvarchar(max) null,[shecon13] nvarchar(max) null,
[shecon14] nvarchar(max) null,[shenv1] nvarchar(max) null,[shenv2] nvarchar(max) null,
[shenv3] nvarchar(max) null,[shenv4] nvarchar(max) null,[shenv5] nvarchar(max) null,
[shenv6] nvarchar(max) null,[shenv7] nvarchar(max) null,[shenv8] nvarchar(max) null,
[shenv9] nvarchar(max) null,[shenv10] nvarchar(max) null,[shenv11] nvarchar(max) null,
[shenv12] nvarchar(max) null,[shenv13] nvarchar(max) null,[shhouse1] nvarchar(max) null,
[shhouse2] nvarchar(max) null,[shhouse3] nvarchar(max) null,[shfam1] nvarchar(max) null,
[shfam2] nvarchar(max) null,[shfam3] nvarchar(max) null,[shfam4] nvarchar(max) null,
[shfam5] nvarchar(max) null,[shfam6] nvarchar(max) null,[shfam7] nvarchar(max) null,
[shfam8] nvarchar(max) null,[shfam9] nvarchar(max) null,[shfam10] nvarchar(max) null,
[shfam11] nvarchar(max) null,[shfam12] nvarchar(max) null,[shfam13] nvarchar(max) null,
[shfam14] nvarchar(max) null,[shfam15] nvarchar(max) null,[shfam16] nvarchar(max) null,
[shfam17] nvarchar(max) null,[shfam18] nvarchar(max) null,[shother] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid]));

	--> Table=16
CREATE TABLE Young_lives_wealth
([wi] nvarchar(max) null,[hq] nvarchar(max) null,[sv] nvarchar(max) null,
[cd] nvarchar(max) null,[elecq] nvarchar(max) null,[toiletq] nvarchar(max) null,
[drwaterq] nvarchar(max) null,[cookingq] nvarchar(max) null,
[childroundid] nvarchar(500) FOREIGN KEY REFERENCES [dbo].[Child]([childroundid])
);
--> Data insertion into Tables
	--> Table-1 
INSERT INTO [Child] (childroundid, childid, clustid, commid, typesite, region, dint, round, yc, chlocation)
SELECT childidround, childid, clustid, commid, typesite, region, dint, round, yc, childloc
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround, childid, clustid, commid, typesite, region, dint, round, yc, childloc
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround, childid, clustid, placeid, typesite, region, dint, round, yc, childloc
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround, childid, clustid, commid, typesite, region, dint, round, yc, childloc
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-2 
INSERT INTO [Panel_information] (childroundid, inround_hh, panel, deceased)
SELECT childidround, inround, panel, deceased
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround, inround, panel12345, deceased
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround, inround, panel12345, deceased
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround, inround, panel12345, deceased
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-3
INSERT INTO [Child_characteristics] (childroundid, sex, chlang,chethnic,chldrel,agemon,marrcohab,marrcohab_age,birth,birth_age)
SELECT childidround,chsex,chlang,chethnic,chldrel,agemon,marrcohab,marrcohab_age,birth,birth_age
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,chsex,chlang,chethnic,chldrel,agemon,marrcohab,marrcohab_age,birth,birth_age
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,chsex,chlang,chethnic,chldrel,agemon,marrcohab,marrcohab_age,birth,birth_age
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,chsex,chlang,chethnic,chldrel,agemon,marrcohab,marrcohab_age,birth,birth_age
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-4
INSERT INTO [Anthropometric_info] (childroundid,chweight,chheight,bmi,zwfa,zhfa,zbfa,zwfl,fwfa,fhfa,fbfa,fwfl,underweight,stunting,thinness)
SELECT childidround,chweight,chheight,bmi,zwfa,zhfa,zbfa,zwfl,fwfa,fhfa,fbfa,fwfl,underweight,stunting,thinness
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,chweight,chheight,bmi,zwfa,zhfa,zbfa,zwfl,fwfa,fhfa,fbfa,fwfl,underweight,stunting,thinness
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,chweight,chheight,bmi,zwfa,zhfa,zbfa,zwfl,fwfa,fhfa,fbfa,fwfl,underweight,stunting,thinness
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,chweight,chheight,bmi,zwfa,zhfa,zbfa,zwfl,fwfa,fhfa,fbfa,fwfl,underweight,stunting,thinness
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-5
INSERT INTO [Birth_immunisation] (childroundid,bwght,bwdoc,numante,tetanus,delivery,bcg,measles,polio,dpt,hib)
SELECT childidround,bwght,bwdoc,numante,tetanus,delivery,bcg,measles,polio,dpt,hib
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,bwght,bwdoc,numante,tetanus,delivery,bcg,measles,polio,dpt,hib
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,bwght,bwdoc,numante,tetanus,delivery,bcg,measles,polio,dpt,hib
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,bwght,bwdoc,numante,tetanus,delivery,bcg,measles,polio,dpt,hib
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-6
INSERT INTO [Health_wellbeing] (childroundid,chmightdie,chillness,chinjury,chhprob,chdisability,chdisscale,chhrel,chhealth,cladder)
SELECT childidround,chmightdie, chillness, chinjury, chhprob, chdisability, chdisscale, chhrel, chhealth, cladder
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,chmightdie, chillness, chinjury, chhprob, chdisability, chdisscale, chhrel, chhealth, cladder
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,chmightdie, chillness, chinjury, chhprob, chdisability, chdisscale, chhrel, chhealth, cladder
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,chmightdie, chillness, chinjury, chhprob, chdisability, chdisscale, chhrel, chhealth, cladder
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-7
INSERT INTO [Smoking_drinking] (childroundid,chsmoke,chalcohol,chrephealth1,chrephealth2,chrephealth3,chrephealth4)
SELECT childidround,chsmoke,chalcohol,chrephealth1,chrephealth2,chrephealth3,chrephealth4
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,chsmoke,chalcohol,chrephealth1,chrephealth2,chrephealth3,chrephealth4
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,chsmoke,chalcohol,chrephealth1,chrephealth2,chrephealth3,chrephealth4
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,chsmoke,chalcohol,chrephealth1,chrephealth2,chrephealth3,chrephealth4
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-8
INSERT INTO [Time_use](childroundid,hsleep,hcare,hchore,htask,hwork,hschool,hstudy,hplay,commwork,commsch)
SELECT childidround,hsleep,hcare,hchore,htask,hwork,hschool,hstudy,hplay,commwork,commsch
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,hsleep,hcare,hchore,htask,hwork,hschool,hstudy,hplay,commwork,commsch
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,hsleep,hcare,hchore,htask,hwork,hschool,hstudy,hplay,commwork,commsch
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,hsleep,hcare,hchore,htask,hwork,hschool,hstudy,hplay,commwork,commsch
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-9
INSERT INTO [Education_skills] (childroundid,preprim,agegr1,enrol,engrade,entype,hghgrade,timesch,levlread,levlwrit,literate)
SELECT childidround,preprim,agegr1,enrol,engrade,entype,hghgrade,timesch,levlread,levlwrit,literate
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,preprim,agegr1,enrol,engrade,entype,hghgrade,timesch,levlread,levlwrit,literate
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,preprim,agegr1,enrol,engrade,entype,null,timesch,levlread,levlwrit,literate
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,preprim,agegr1,enrol,engrade,entype,hghgrade,timesch,levlread,levlwrit,literate
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-10
INSERT INTO [Mother_father_caregiver_characteristics] (childroundid, dadid,dadage,dadlive,dadyrdied,dadcantread,dadedu,momid,momage,momlive,momyrdied,momcantread,momedu,careid,careage,caresex,carehead,carerel,carecantread,caredu,careladder,careldr4yrs)
SELECT childidround, dadid,dadage,dadlive,dadyrdied,dadcantread,dadedu,momid,momage,momlive,momyrdied,
momcantread,momedu,careid,careage,caresex,carehead,carerel,carecantread,caredu,careladder,careldr4yrs
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround, dadid,dadage,dadlive,dadyrdied,dadcantread,dadedu,momid,momage,momlive,momyrdied,
momcantread,momedu,careid,careage,caresex,carehead,carerel,carecantread,caredu,careladder,careldr4yrs
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround, dadid,dadage,dadlive,dadyrdied,dadcantread,dadedu,momid,momage,momlive,momyrdied,
momcantread,momedu,careid,careage,caresex,carehead,carerel,carecantread,caredu,careladder,careldr4yrs
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround, dadid,dadage,dadlive,dadyrdied,dadcantread,dadedu,momid,momage,momlive,momyrdied,
momcantread,momedu,careid,careage,caresex,carehead,carerel,carecantread,caredu,careladder,careldr4yrs
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-11
INSERT INTO [Household_head_characteristics](childroundid,headid,headage,headsex,headedu,headrel)
SELECT childidround, headid,headage,headsex,headedu,headrel
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround, headid,headage,headsex,headedu,headrel
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround, headid,headage,headsex,headedudu,headrel
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround, headid,headage,headsex,headedu,headrel
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-12
INSERT INTO [Size_composition] (childroundid,male05,male612,male1317,male1860,male61,female05,female612,female1317,female1860,female61,hhsize)
SELECT childidround,male05,male612,male1317,male1860,male61,female05,female612,female1317,female1860,female61,hhsize
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,male05,male612,male1317,male1860,male61,female05,female612,female1317,female1860,female61,hhsize
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,male05,male612,male1317,male1860,male61,female05,female612,female1317,female1860,female61,hhsize
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,male05,male612,male1317,male1860,male61,female05,female612,female1317,female1860,female61,hhsize
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-13
INSERT INTO [Livestock_land_house_ownership] 
(childroundid, ownlandhse,ownhouse,aniany,animilk,anidrau,anirumi,anispec,anicowm,anicowt,anidonk
,anishee,anigoat,anipigs,anipoul,anirabb,aniothr)
SELECT childidround, ownlandhse,ownhouse,aniany,animilk,anidrau,anirumi,anispec,anicowm,anicowt,anidonk
,anishee,anigoat,anipigs,anipoul,anirabb,aniothr
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround, ownlandhse,ownhouse,aniany,animilk,anidrau,anirumi,anispec,anicowm,anicowt,anidonk
,anishee,anigoat,anipigs,anipoul,anirabb,aniothr
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround, ownlandhse,ownhouse,aniany,animilk,anidrau,anirumi,anispec,anicowm,anicowt,anidonk
,anishee,anigoat,anipigs,anipoul,anirabb,aniothr
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround, ownlandhse,ownhouse,aniany,animilk,anidrau,anirumi,anispec,anicowm,anicowt,anidonk
,anishee,anigoat,anipigs,anipoul,anirabb,aniothr
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-14
INSERT INTO [Credit_food_security_public_programmes]
(childroundid,credit,foodsec,hep,psnp_pw,psnp_ds,eap,othprog,resettled)
SELECT childidround,credit,foodsec,hep,psnp_pw,psnp_ds,eap,othprog,resettled
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed];

INSERT INTO [Credit_food_security_public_programmes]
(childroundid,credit,foodsec,pds,nregs,nregs_work,nregs_allow,rajiv,sabla,sabla_yl,ikp,ikp_child)
SELECT childidround,credit,foodsec,pds,nregs,nregs_work,nregs_allow,rajiv,sabla,sabla_yl,ikp,ikp_child
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed];

INSERT INTO [Credit_food_security_public_programmes]
(childroundid,credit,foodsec,juntos,bonograt,sisgrat_yl,minsa_yl,insur_yl,beca_yl,projoven_yl)
SELECT childidround,credit,foodsec,juntos,bonograt,sisgrat_yl,minsa_yl,insur_yl,beca_yl,projoven_yl
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed];

INSERT INTO [Credit_food_security_public_programmes]
(childroundid,credit,foodsec,molisa06,molisa09,molisa10,molisa11,molisa12,molisa13,molisa14,molisa15,molisa16)
SELECT childidround,credit,foodsec,molisa06,molisa09,molisa10,molisa11,molisa12,molisa13,molisa14,molisa15,molisa16
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-15
INSERT INTO [Household_shocks] (childroundid, shcrime1 ,shcrime2 , shcrime3, shcrime4 ,shcrime5 ,shcrime6 ,shcrime7 ,shcrime8 ,shregul1 ,shregul2 ,shregul3 ,
shregul4 ,shregul5 ,shecon1 ,shecon2 ,shecon3 ,shecon4 ,shecon5 ,shecon6 ,shecon7 ,shecon8 ,shecon9 ,shecon10 ,shecon11 ,shecon12 ,shecon13 ,shecon14 ,shenv1 ,shenv2 ,shenv3 ,
shenv4 ,shenv5 ,shenv6 ,shenv7 ,shenv8 ,shenv9 ,shhouse1 ,shhouse2 ,shhouse3 ,shfam1 ,shfam3 ,shfam4 ,shfam5 ,shfam6 ,shfam7 ,shfam8 ,shfam9 ,shfam10 ,
shfam11 ,shfam12 ,shfam13 ,shfam14 ,shother )
Select childidround,shcrime1 ,shcrime2 , shcrime3, shcrime4 ,shcrime5 ,shcrime6 ,shcrime7 ,shcrime8 ,shregul1 ,shregul2 ,shregul3 ,
shregul4 ,shregul5 ,shecon1 ,shecon2 ,shecon3 ,shecon4 ,shecon5 ,shecon6 ,shecon7 ,shecon8 ,shecon9 ,shecon10 ,shecon11 ,shecon12 ,shecon13 ,shecon14 ,shenv1 ,shenv2 ,shenv3 ,
shenv4 ,shenv5 ,shenv6 ,shenv7 ,shenv8 ,shenv9 ,shhouse1 ,shhouse2 ,shhouse3 ,shfam1 ,shfam3 ,shfam4 ,shfam5 ,shfam6 ,shfam7 ,shfam8 ,shfam9 ,shfam10 ,
shfam11 ,shfam12 ,shfam13 ,shfam14 ,shother
From [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
Select childidround, shcrime1 ,shcrime2 , shcrime3, shcrime4 ,shcrime5 ,shcrime6 ,shcrime7 ,shcrime8 ,shregul1 ,shregul2 ,shregul3 ,
shregul4 ,shregul5 ,shecon1 ,shecon2 ,shecon3 ,shecon4 ,shecon5 ,shecon6 ,shecon7 ,shecon8 ,shecon9 ,shecon10 ,shecon11 ,shecon12 ,shecon13 ,shecon14 ,shenv1 ,shenv2 ,shenv3 ,
shenv4 ,shenv5 ,shenv6 ,shenv7 ,shenv8 ,shenv9 ,shhouse1 ,shhouse2 ,shhouse3 ,shfam1 ,shfam3 ,shfam4 ,shfam5 ,shfam6 ,shfam7 ,shfam8 ,shfam9 ,shfam10 ,
shfam11 ,shfam12 ,shfam13 ,shfam14 ,shother
From [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
Select childidround, shcrime1 ,shcrime2 , shcrime3, shcrime4 ,shcrime5 ,shcrime6 ,null ,shcrime8 ,shregul1 ,shregul2 ,null ,
shregul4 ,shregul5 ,shecon1 ,shecon2 ,shecon3 ,shecon4 ,shecon5 ,shecon6 ,shecon7 ,shecon8 ,shecon9 ,shecon10 ,shecon11 ,shecon12 ,null ,shecon14 ,shenv1 ,shenv2 ,shenv3 ,
shenv4 ,shenv5 ,shenv6 ,shenv7 ,shenv8 ,shenv9 ,shhouse1 ,shhouse2 ,shhouse3 ,shfam1 ,shfam3 ,shfam4 ,shfam5 ,shfam6 ,shfam7 ,shfam8 ,shfam9 ,shfam10 ,
null ,shfam12 ,shfam13 ,shfam14 ,shother
From [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
Select childidround,shcrime1 ,shcrime2 , shcrime3, shcrime4 ,shcrime5 ,shcrime6 ,shcrime7 ,shcrime8 ,shregul1 ,shregul2 ,shregul3 ,
shregul4 ,shregul5 ,shecon1 ,shecon2 ,shecon3 ,shecon4 ,shecon5 ,shecon6 ,shecon7 ,shecon8 ,shecon9 ,shecon10 ,shecon11 ,shecon12 ,shecon13 ,shecon14 ,shenv1 ,shenv2 ,shenv3 ,
shenv4 ,shenv5 ,shenv6 ,shenv7 ,shenv8 ,shenv9 ,shhouse1 ,shhouse2 ,shhouse3 ,shfam1 ,shfam3 ,shfam4 ,shfam5 ,shfam6 ,shfam7 ,shfam8 ,shfam9 ,shfam10 ,
shfam11 ,shfam12 ,shfam13 ,shfam14 ,shother
From [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

	--> Table-16
INSERT INTO [Young_lives_wealth] (childroundid, wi,hq,sv,cd,elecq,toiletq,drwaterq,cookingq)
SELECT childidround,wi_new,hq_new,sv_new,cd_new,elecq_new,toiletq_new,drwaterq_new,cookingq_new
FROM [Child_Well_Being_Monitor].[dbo].[ethiopia_constructed]
UNION ALL
SELECT childidround,wi,hq,sv,cd,elecq,toiletq,drwaterq,cookingq
FROM [Child_Well_Being_Monitor].[dbo].[india_constructed]
UNION ALL
SELECT childidround,wi,hq,sv,cd,elecq,toiletq,drwaterq,cookingq
FROM [Child_Well_Being_Monitor].[dbo].[peru_constructed]
UNION ALL
SELECT childidround,wi_new,hq_new,sv_new,cd_new,elecq_new,toiletq_new,drwaterq_new,cookingq_new
FROM [Child_Well_Being_Monitor].[dbo].[vietnam_constructed];

                       ----------->***** Creating reports using Views and Store Procedures *****<-----------
Drop VIEW General_View;
CREATE VIEW General_View --GENERAL VIEW FOR DATA DICTIONARY for summarized reports
AS
Select b.childroundid AS Child_ID, 
Gender= CASE WHEN h.sex = 1 THEN 'male' ELSE 'female' END,
Country=CASE WHEN b.childroundid like 'ET%' THEN 'ETHOPIA' WHEN b.childroundid like 'IN%' THEN 'INDIA'
WHEN b.childroundid like 'VN%' THEN 'VIETNAM' WHEN b.childroundid like 'PE%' THEN 'PERU' END,
TypeSite=CASE WHEN t.typesite=1 THEN 'URBAN' ELSE 'RURAL' END,
BCG_Vaccine=CASE WHEN b.bcg='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
Measles_Vaccine=CASE WHEN b.measles='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
Polio_Vaccine=CASE WHEN b.polio='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
DPT_Vaccine=CASE WHEN b.dpt='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
HIB_Vaccine=CASE WHEN b.hib='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
Mother_Tetanus_Injection=CASE WHEN b.tetanus='0' THEN 'NOT RECEIVED' ELSE 'RECEIVED' END,
Water_Availability=CASE WHEN e.drwaterq='0' THEN 'NO' ELSE 'Yes' END, 
Food_Status =  CASE When d.foodsec = 1 Then 'we always eat enough of what we want' WHEN d.foodsec = 2 THEN 
'we eat enough but not always what we would like' WHEN d.foodsec = 3 THEN 'we sometimes do not eat enough'
WHEN d.foodsec = 4 Then 'we frequently do not eat enough' ELSE 'Not Mentioned'  END ,
Child_Smoke=CASE WHEN f.chsmoke = 1 THEN 'Every day' WHEN f.chsmoke = 2 THEN 'At least once a week'
WHEN f.chsmoke = 3 THEN 'At least once a month' WHEN f.chsmoke = 4 THEN 'Hardly ever'
WHEN f.chsmoke = 5 THEN 'I never smoke cigarettes' ELSE 'not mentioned' END, 
Child_Consume_Alcohol=CASE WHEN f.chalcohol = 0 THEN 'Do not consume alcohol'
WHEN f.chalcohol = 1 THEN 'Child consume alcohol everyday or at least once a week' ELSE 'not mentioned' END,
enrol = Case When g.enrol = 1 THEN 'YES' ELSE 'NO' END
FROM Birth_immunisation AS b inner join Child AS t ON b.childroundid = t.childroundid 
inner join [dbo].[Credit_food_security_public_programmes] AS d ON t.childroundid = d.childroundid
inner join [dbo].[Young_lives_wealth] AS e ON d.childroundid = e.childroundid
inner join [dbo].[Smoking_drinking] AS f ON e.childroundid = f.childroundid
inner join [dbo].[Education_skills] AS g ON f.childroundid = g.childroundid
inner join [dbo].[Child_characteristics] AS h ON g.childroundid = h.childroundid
		--Executing the View
GO
select * from General_View;

	--> 1- Urban & Rural Children Data using View
Drop View RuralUrbanChildren;
Create View RuralUrbanChildren AS
select childroundid,SUBSTRING(childroundid,1,2)as Country,childid,clustid,commid,typesite as typesite_code, 
typesite=CASE
WHEN typesite = 1 THEN 'Urban'  WHEN typesite = 2 THEN 'Rural' ELSE 'Other'END,
region,dint,round,yc,chlocation
from dbo.child
Where typesite IN (1,2);
		--Executing the View
GO
select * from RuralUrbanChildren;

	--> 2- Urban & Rural Total Children Count using View
Create View RuralUrbanChildrenTotal
AS
select typesite,count(childroundid) as TotalChild from dbo.RuralUrbanChildren group by typesite
		--Executing the View
GO
select * from RuralUrbanChildrenTotal;

	--> 2- Urban & Rural Total Children using Store Procedure
Drop PROCEDURE getChildbyResidence;
CREATE PROCEDURE getChildbyResidence @typesite nvarchar(30) AS
SELECT count(childroundid) as TotalChildren,typesite=CASE
WHEN typesite = 1 THEN 'Urban'  WHEN typesite = 2 THEN 'Rural' ELSE 'Other' END
FROM dbo.child WHERE typesite = @typesite group by typesite
		--Executing the procedure
GO
EXEC getChildbyResidence @typesite = '1'

	--> 3- Male & Female children Height & Weight data using Store Procedure
Drop PROCEDURE ChildSex; 
CREATE PROCEDURE ChildSex @sex nvarchar(30) AS
SELECT c.childroundid AS Child_ID, Country=CASE
WHEN c.childroundid like 'ET%' THEN 'ETHOPIA' WHEN c.childroundid like 'IN%' THEN 'INDIA'
WHEN c.childroundid like 'VN%' THEN 'VIETNAM'
WHEN c.childroundid like 'PE%' THEN 'PERU' ELSE 'Not Mentioned' END,
Gender=CASE WHEN sex = 1 THEN 'male' ELSE 'female' END,a.chweight,a.chheight
FROM dbo.Child_characteristics c 
INNER JOIN Anthropometric_info a
ON c.childroundid=a.childroundid WHERE sex = @sex
	--Executing the procedure
GO
EXEC ChildSex @sex = '1'

	--> 4- Mother & Father Education data of each child using view
Drop view MotherEducation;
Create View MotherEducation AS
Select childroundid,momedu As MotherEdu, momedu=CASE 
WHEN momedu = 0 THEN 'None' WHEN momedu = 1 THEN 'Grade 1' WHEN momedu = 2 THEN 'Grade 2'
WHEN momedu = 3 THEN 'Grade 3' WHEN momedu = 4 THEN 'Grade 4' WHEN momedu = 5 THEN 'Grade 5'
WHEN momedu = 6 THEN 'Grade 6' WHEN momedu = 7 THEN 'Grade 7' WHEN momedu = 8 THEN 'Grade 8'
WHEN momedu = 9 THEN 'Grade 9' WHEN momedu = 10 THEN 'Grade 10' WHEN momedu = 11 THEN 'Grade 11'
WHEN momedu = 12 THEN 'Grade 12' WHEN momedu = 13 THEN 'Post-secondary, vocational'
WHEN momedu = 14 THEN 'University' WHEN momedu = 15 THEN ' Masters, doctorate' WHEN momedu = 28 THEN 'Adult literacy'
WHEN momedu = 29 THEN 'Religious education' WHEN momedu = 30 THEN 'Other'
ELSE 'not mentioned' End, momage, dadedu AS FatherEdu,
dadedu=CASE  WHEN dadedu = 0 THEN 'None' WHEN dadedu = 1 THEN 'Grade 1' WHEN dadedu = 2 THEN 'Grade 2'
WHEN dadedu = 3 THEN 'Grade 3' WHEN dadedu = 4 THEN 'Grade 4' WHEN dadedu = 5 THEN 'Grade 5'
WHEN dadedu = 6 THEN 'Grade 6' WHEN dadedu = 7 THEN 'Grade 7' WHEN dadedu = 8 THEN 'Grade 8'
WHEN dadedu = 9 THEN 'Grade 9' WHEN dadedu = 10 THEN 'Grade 10'
WHEN dadedu = 11 THEN 'Grade 11' WHEN dadedu = 12 THEN 'Grade 12'
WHEN dadedu = 13 THEN 'Post-secondary, vocational' WHEN dadedu = 14 THEN 'University'
WHEN dadedu = 15 THEN ' Masters, doctorate' WHEN dadedu = 28 THEN 'Adult literacy'
WHEN dadedu = 29 THEN 'Religious education' WHEN dadedu = 30 THEN 'Other' ELSE 'not mentioned' End,dadage  
From dbo.Mother_father_caregiver_characteristics;
		--Executing the View
GO
select * from MotherEducation;

	--> 5- Collecting data on Conditions (religion,gender,language) using Store Procedure
Drop PROCEDURE ChildCharactersticsData;
CREATE PROCEDURE ChildCharactersticsData  @condition nvarchar(25),@country nvarchar(30),@Find nvarchar(25) AS
IF @condition='religion'
BEGIN
 SELECT *, ChildReligion=CASE
WHEN chlang = 1	THEN  'christian'
WHEN chlang = 2	THEN  'muslim'
WHEN	chlang = 3	THEN  'buddhist'
WHEN	chlang = 4	THEN  'hindu'
WHEN	chlang = 5	THEN  'catholic'
WHEN	chlang = 6	THEN  'protestant'
WHEN	chlang = 7	THEN  'orthodox'
WHEN	chlang = 8	THEN  'sikh'
WHEN	chlang = 9	THEN  'evangelist'
WHEN	chlang = 10	THEN  'mormon'
WHEN	chlang = 11	THEN  'ancestor worship'
WHEN	chlang = 12	THEN  'hao hao'
WHEN	chlang = 13	THEN  'cao dai'
WHEN	chlang = 14	THEN  'none'
WHEN	chlang = 15	THEN  'other'
WHEN	chlang = 99	THEN  'nk'
	ELSE 'not mentioned'  END
FROM Child_characteristics  v
WHERE v.chldrel like @Find +'%' 
and v.childroundid like @country+'%' END
	IF @condition='gender'
BEGIN
 SELECT *, Gender=CASE
WHEN sex = 1 THEN 'male' ELSE 'female' END
FROM Child_characteristics  v
WHERE v.sex like @Find +'%' and v.childroundid like @country+'%'
    END
	IF @condition='language'
BEGIN
 SELECT *, ChildLanguage=CASE
WHEN chlang = 1	THEN 'afarigna'
WHEN chlang = 2	THEN  'amarigna'
WHEN chlang = 3	THEN  'agewigna'
WHEN chlang = 4	THEN  'dawerogna'
WHEN chlang = 5	THEN  'gedeogna'
WHEN chlang = 6	THEN  'guraghigna'
WHEN chlang = 7	THEN  'hadiyigna'
WHEN chlang = 8	THEN  'harari'
WHEN chlang = 9	THEN  'kefigna'
WHEN chlang = 10 THEN  'kembategna'
WHEN chlang = 11 THEN  'oromifa'
WHEN chlang = 12 THEN  'sidamigna'
WHEN chlang = 13 THEN  'siltigna'
WHEN chlang = 14 THEN  'somaligna'
WHEN chlang = 15 THEN  'tigrigna'
WHEN chlang = 16 THEN  'welayitegna'
WHEN chlang = 17 THEN  'zayigna'
WHEN chlang = 20 THEN  'other'
WHEN chlang = 88 THEN  'n/a'
WHEN chlang = 79 THEN  'refused to answer'
WHEN chlang = 99 THEN  'missing'
WHEN chlang = 77 THEN  'nk' ELSE 'not mentioned' END
FROM Child_characteristics  v
WHERE v.chlang like @Find +'%' and v.childroundid like @country+'%'
    END
    ELSE
    BEGIN
        PRINT 'Please give only these three values in condition (religion,gender,language)';
    END
	--Executing the procedure
GO
EXEC ChildCharactersticsData @condition='language' , @country='ET',@Find='2'


	--> 6- Male & Female children enrolled in schools in all 4 countries using View
Drop VIEW Enrollment;
Create View Enrollment AS 
SELECT G.childroundid, sex = Case When sex = 1 THEN 'Male' ELSE 'Female' END,
enrol = Case When enrol = 1 THEN 'YES' ELSE 'NO' END
from Child_characteristics G
INNER JOIN Education_Skills I ON G.childroundid=I.childroundid
		--Executing the View
GO
Select * from Enrollment;

	--> 7- Children know about Sex Education Using View
Drop View Having_Sex_Education
Create View Having_Sex_Education AS 
Select childroundid,Country=CASE
WHEN childroundid like 'ET%' THEN 'ETHOPIA'
WHEN childroundid like 'IN%' THEN 'INDIA'
WHEN childroundid like 'VN%' THEN 'VIETNAM'
WHEN childroundid like 'PE%' THEN 'PERU' ELSE 'Not Mentioned' END,
[chrephealth2] = CASE WHEN [chrephealth2] = 0 THEN 'Child does not know condom can prevent disease through sex' ELSE 'Child knows condom can prevent disease through sex' END
, [chrephealth3] = CASE WHEN [chrephealth3] = 0 THEN 'Child does not know healthy-looking person can pass on a disease sex' ELSE 'Child knows healthy-looking person can pass on a disease sex' END
, [chrephealth4] = CASE WHEN [chrephealth4] = 1 THEN ' Shop or street vendor' WHEN [chrephealth4] = 2 Then 'Family planning services or health facility'
WHEN [chrephealth4] = 3 THEN 'Other' WHEN [chrephealth4]= 4 THEN 'I do not know what a condom is/I do not know where to get a condom' ELSE 'Not Mentioned' END
FROM Smoking_drinking
		--Executing the View
GO
SELECT * FROM Having_Sex_Education;

	--> 8- Children frequency of smoking & consuming alcohol using Store Procedure
Drop PROCEDURE ChildSmokingDrinking; 
CREATE PROCEDURE ChildSmokingDrinking  @Child_Smoking nvarchar(30), @Child_Consuming_Alcohol nvarchar(30), @country nvarchar(30)
AS
SELECT childroundid AS Child_ID,Country=CASE
WHEN childroundid like 'ET%' THEN 'ETHOPIA'
WHEN childroundid like 'IN%' THEN 'INDIA'
WHEN childroundid like 'VN%' THEN 'VIETNAM'
WHEN childroundid like 'PE%' THEN 'PERU' ELSE 'Not Mentioned'
END,Child_Smoke=CASE
WHEN chsmoke = 1 THEN 'Every day'
WHEN chsmoke = 2 THEN 'At least once a week'
WHEN chsmoke = 3 THEN 'At least once a month'
WHEN chsmoke = 4 THEN 'Hardly ever'
WHEN chsmoke = 5 THEN 'I never smoke cigarettes'
ELSE 'not mentioned'
END, 
Child_Consume_Alcohol=CASE
WHEN chalcohol = 0 THEN 'Do not consume alcohol'
WHEN chalcohol = 1 THEN 'Child consume alcohol everyday or at least once a week'
ELSE 'not mentioned'
END
FROM dbo.Smoking_drinking
WHERE chsmoke = @Child_Smoking AND chalcohol= @Child_Consuming_Alcohol and childroundid like @country+'%'
	--Executing the procedure
Go
EXEC ChildSmokingDrinking  @Child_Smoking='2' , @Child_Consuming_Alcohol='1' , @country='IN'

	--> 9- Children facing food problem Using View
DROP VIEW Child_food_problem;
Create View Child_food_problem 
AS 
Select x.childroundid AS Chid_ID,Country=CASE
WHEN x.childroundid like 'ET%' THEN 'ETHOPIA'
WHEN x.childroundid like 'IN%' THEN 'INDIA'
WHEN x.childroundid like 'VN%' THEN 'VIETNAM'
WHEN x.childroundid like 'PE%' THEN 'PERU'
END,
Location=CASE
WHEN c.typesite=1 THEN 'URBAN' ELSE 'RURAL' 
END,
Food_Status =  CASE When foodsec = 1 Then 'we always eat enough of what we want' WHEN foodsec = 2 THEN 
'we eat enough but not always what we would like' WHEN foodsec = 3 THEN 'we sometimes do not eat enough'
WHEN foodsec = 4 Then 'we frequently do not eat enough' ELSE 'Not Mentioned'  END 
FROM Credit_food_security_public_programmes AS x inner join Child AS c ON x.childroundid=c.childroundid
		--Executing the View
Go
SELECT * FROM Child_food_problem;

	--> 10- Study of Survey that children food status according to their region using view
DROP view Food_Status;
Create View Food_Status 
AS 
SELECT count(A.childroundid) AS Child_ID,Country=CASE
WHEN B.childroundid like 'ET%' THEN 'ETHOPIA'
WHEN B.childroundid like 'IN%' THEN 'INDIA'
WHEN B.childroundid like 'VN%' THEN 'VIETNAM'
WHEN B.childroundid like 'PE%' THEN 'PERU' ELSE 'Not Mentioned'
END,Location=CASE
WHEN typesite=1 THEN 'URBAN' ELSE 'RURAL' END, 
Food_Status =  CASE When foodsec = 1 Then 'we always eat enough of what we want' WHEN foodsec = 2 THEN 
'we eat enough but not always what we would like' WHEN foodsec = 3 THEN 'we sometimes do not eat enough'
WHEN foodsec = 4 Then 'we frequently do not eat enough' ELSE 'Not Mentioned'  END 
FROM Credit_food_security_public_programmes AS A INNER JOIN Child AS B ON B.childroundid = A.childroundid 
		--Executing the View
Go
select * from Food_Status;

	--> 10- Access to safe Water availability according to Typesite & Country using store procedure
Drop Procedure SafeWater_Availability;
CREATE PROCEDURE SafeWater_Availability @Water_Availability nvarchar(30), @Typesite nvarchar(30), @Country nvarchar(30) AS
SELECT A.childroundid as Child_ID, Location=CASE
WHEN typesite=1 THEN 'URBAN' ELSE 'RURAL' END,
Water_Availability=CASE WHEN drwaterq='0' THEN 'NO' ELSE 'Yes' END
FROM Child AS A INNER JOIN Young_lives_wealth AS B ON B.childroundid = A.childroundid 
where drwaterq= @Water_Availability AND typesite=@Typesite AND A.childroundid like @country+'%'
		--Executing the Procedure
GO
EXEC SafeWater_Availability @Water_Availability='0', @Typesite='2', @Country='IN';

	--> 11- Summarized Report- Access to safe Water availability according to  Country vise
Drop VIEW SAFE_DRINKING_WATER_AVAILABILITY;
CREATE VIEW SAFE_DRINKING_WATER_AVAILABILITY AS
select  v.Country,(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Water_Availability = 'NO' and v.Country=b.Country)as [Water Available],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Water_Availability = 'YES' and v.Country=b.Country)as [Water NOT Available] 
from dbo.General_View v where Country is not null group by Country
		--Executing VIEW
GO
SELECT * From SAFE_DRINKING_WATER_AVAILABILITY;

	--> 12- Summarized Report- Child & Mother Vaccination status Country vise
DROP VIEW VACCINATION_STATUS;
CREATE VIEW VACCINATION_STATUS AS
select v.Country,(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.BCG_Vaccine = 'RECEIVED' and v.Country=b.Country)as [BCG RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.BCG_Vaccine = 'NOT RECEIVED' and v.Country=b.Country)as [BCG NOT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Measles_Vaccine = 'RECEIVED' and v.Country=b.Country)as [Measles RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Measles_Vaccine = 'NOT RECEIVED' and v.Country=b.Country)as [Measles NOT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Polio_Vaccine = 'RECEIVED' and v.Country=b.Country)as [Polio RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Polio_Vaccine = 'NOT RECEIVED' and v.Country=b.Country)as [Polio NOT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.DPT_Vaccine = 'RECEIVED' and v.Country=b.Country)as [DPT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.DPT_Vaccine = 'NOT RECEIVED' and v.Country=b.Country)as [DPT NOT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.HIB_Vaccine = 'RECEIVED' and v.Country=b.Country)as [HIB RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.HIB_Vaccine = 'NOT RECEIVED' and v.Country=b.Country)as [HIB NOT RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Mother_Tetanus_Injection = 'RECEIVED' and v.Country=b.Country)as [Mother Tetanus RECEIVED],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Mother_Tetanus_Injection = 'NOT RECEIVED' and v.Country=b.Country)as [Mother Tetanus NOT RECEIVED]
from dbo.General_View v where Country is not null group by Country
	--> Executing the View
GO
SELECT * FROM VACCINATION_STATUS;

	--> 13- Summarized Report- Child FOOD STATUS by Country vise
DROP VIEW CHILD_FOOD_STATUS;
CREATE VIEW CHILD_FOOD_STATUS AS
select v.Country,(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Food_Status = 'we always eat enough of what we want' and v.Country=b.Country)as [Eat Enough],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Food_Status = 'we eat enough but not always what we would like' and v.Country=b.Country)as [Eat Enough but not always],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Food_Status = 'we sometimes do not eat enough' and v.Country=b.Country)as [Sometimes don't eat enough],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Food_Status = 'we frequently do not eat enough' and v.Country=b.Country)as [Mostly don't eat enough]
from dbo.General_View v where Country is not null group by Country
		--> Executing the View
GO
SELECT * FROM CHILD_FOOD_STATUS;

	--> 14- Summarized Report- Children frequency of smoking & consuming alcohol by TypeSite
DROP VIEW CHILD_SMOKING_AND_DRINKING;
CREATE VIEW CHILD_SMOKING_AND_DRINKING AS
select v.TypeSite,(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Smoke = 'Every day' and v.TypeSite=b.TypeSite)as [Smoke Daily],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Smoke = 'At least once a week' and v.TypeSite=b.TypeSite)as [Smoke Once a Week],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Smoke = 'At least once a month' and v.TypeSite=b.TypeSite)as [SmokeOnce a Month],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Smoke = 'Hardly ever' and v.TypeSite=b.TypeSite)as [Smoke Hardly Ever],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Smoke = 'I never smoke cigarettes' and v.TypeSite=b.TypeSite)as [Never Smoke],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Consume_Alcohol = 'Do not consume alcohol' and v.TypeSite=b.TypeSite)as [Don't Consume Alcohol],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.Child_Consume_Alcohol = 'Child consume alcohol everyday or at least once a week' and v.TypeSite=b.TypeSite)as [Consume Alcohol]
from dbo.General_View v where Country is not null group by TypeSite
		--> Executing the View
GO
SELECT * FROM CHILD_SMOKING_AND_DRINKING;

	--> 15- Summarized Report- Male & Female children enrolled in schools in all 4 countries
DROP VIEW CHILDREN_ENROLLED_IN_SCHOOL;
CREATE VIEW CHILDREN_ENROLLED_IN_SCHOOL AS
select v.TypeSite,(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.enrol = 'YES' and Gender ='male' and v.TypeSite=b.TypeSite)as [Male Enrolled],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.enrol = 'YES' and Gender ='female' and v.TypeSite=b.TypeSite)as [Female Enrolled],
(select DISTINCT(count(Child_ID)) from  dbo.General_View b where b.enrol = 'NO' and v.TypeSite=b.TypeSite)as [Not Enrolled]
from dbo.General_View v where Country is not null group by TypeSite
		--> Executing the View
GO
SELECT * FROM CHILDREN_ENROLLED_IN_SCHOOL;




