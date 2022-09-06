/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [F1]
      ,[QKEY]
      ,[INTERVIEW_START_W75]
      ,[INTERVIEW_END_W75]
      ,[DEVICE_TYPE_W75]
      ,[LANG_W75]
      ,[FORM_W75]
      ,[SATIS_W75]
      ,[FEEL_COUNTRY_FEAR_W75]
      ,[FEEL_COUNTRY_HOPEFUL_W75]
      ,[PRZCMPGN_W75]
      ,[MATTERS_W75]
      ,[VOTEGEN20_W75]
      ,[VOTEGEN20_LEAN_W75]
      ,[VOTEGEN20CERT_T_W75]
      ,[VOTEGEN20CERT_B_W75]
      ,[VOTEGEN20CERT_J_W75]
      ,[VOTEGEN20CERT_H_W75]
      ,[VOTEGEN20_2CAND_W75]
      ,[VOTESTRONG_4_W75]
      ,[DTFORAGNST_W75]
      ,[JBFORAGNST_W75]
      ,[EMTPRES_TRUMP_W75]
      ,[EMTPRES_BIDEN_W75]
      ,[BIDENWINFEEL_W75]
      ,[TRUMPWINFEEL_W75]
      ,[SEN_W75]
      ,[SENA_W75]
      ,[CONG_W75]
      ,[CONGA_W75]
      ,[PLAN1_W75]
      ,[HOWPLANVOTE_W75]
      ,[HOWVOTED_W75]
      ,[PLANABSENT_W75]
      ,[FIRSTVOTE20_W75]
      ,[THERMTRUMP_W75]
      ,[THERMTRUMP_REFUSED_W75]
      ,[THERMBIDEN_W75]
      ,[THERMBIDEN_REFUSED_W75]
      ,[THERMPENCE_W75]
      ,[THERMPENCE_REFUSED_W75]
      ,[THERMHARRIS_W75]
      ,[THERMHARRIS_REFUSED_W75]
      ,[THERMMCCONNELL_W75]
      ,[THERMMCCONNELL_REFUSED_W75]
      ,[THERMSCHUMER_W75]
      ,[THERMSCHUMER_REFUSED_W75]
      ,[VTADMIN_COM_W75]
      ,[VTADMIN_US_W75]
      ,[VTCOUNT_INP_W75]
      ,[VTCOUNT_ABS_W75]
      ,[VTEASY_W75]
      ,[POLTCSRW_W75]
      ,[ECON1_W75]
      ,[ECON1B_W75]
      ,[DTCONF_a_W75]
      ,[DTCONF_b_W75]
      ,[DTCONF_c_W75]
      ,[DTCONF_e_W75]
      ,[DTCONF_f_W75]
      ,[DTCONF_j_W75]
      ,[JBCONF_a_W75]
      ,[JBCONF_b_W75]
      ,[JBCONF_c_W75]
      ,[JBCONF_e_W75]
      ,[JBCONF_f_W75]
      ,[JBCONF_j_W75]
      ,[TRUMPDESC_a_W75]
      ,[TRUMPDESC_b_W75]
      ,[TRUMPDESC_d_W75]
      ,[TRUMPDESC_h_W75]
      ,[TRUMPDESC_i_W75]
      ,[TRUMPDESC_j_W75]
      ,[BIDENDESC_a_W75]
      ,[BIDENDESC_b_W75]
      ,[BIDENDESC_d_W75]
      ,[BIDENDESC_h_W75]
      ,[BIDENDESC_i_W75]
      ,[BIDENDESC_j_W75]
      ,[EVAL_TVS_W75]
      ,[EVAL_BVS_W75]
      ,[ELECT_IMPTNOV_PRVFR_W75]
      ,[ELECT_IMPTNOV_PRVSUP_W75]
      ,[ELECT_IMPTNOV_QUICKWIN_W75]
      ,[ELECT_CONFNOV_PRVFR_W75]
      ,[ELECT_CONFNOV_PRVSUP_W75]
      ,[ELECT_CONFNOV_QUICKWIN_W75]
      ,[ELECT_CONFNOV_MAILTIME_W75]
      ,[ELECT_CONFNOV_CLRWIN_W75]
      ,[ELECT_CONFNOV_NOCOVID_W75]
      ,[VTSYSSEC_US_W75]
      ,[REG_W75]
      ,[PLANREG_W75]
      ,[VOTE_MOTIV_W75]
      ,[VOTEREQUS_W75]
      ,[DT_REPRE_W75]
      ,[JB_REPRE_W75]
      ,[F_METRO]
      ,[F_CREGION]
      ,[F_CDIVISION]
      ,[F_AGECAT]
      ,[F_GENDER]
      ,[F_EDUCCAT]
      ,[F_EDUCCAT2]
      ,[F_HISP]
      ,[F_HISP_ORIGIN]
      ,[F_YEARSINUS]
      ,[F_RACECMB]
      ,[F_RACETHNMOD]
      ,[F_CITIZEN]
      ,[F_BIRTHPLACE2]
      ,[F_MARITAL]
      ,[F_RELIG]
      ,[F_BORN]
      ,[F_RELIGCAT1]
      ,[F_ATTEND]
      ,[F_PARTY_FINAL]
      ,[F_PARTYLN_FINAL]
      ,[F_PARTYSUM_FINAL]
      ,[F_PARTYSUMIDEO]
      ,[F_INC_SDT1]
      ,[F_REG]
      ,[F_IDEO]
      ,[F_INTFREQ]
      ,[F_VOLSUM]
      ,[CONGPOST_W39]
      ,[WEIGHT_W75]
      ,[WEIGHT_W39_W75]
  FROM [Interest_analysis].[dbo].[Pre_Election_survey$]
  --Vote intention among participants who identify as Protestant (religcat1 = 1)
  select count(case when votegen20_w75 = '1' then votegen20_w75 end) as Donald_Trump,
		count(case when votegen20_w75 = '2' then votegen20_w75 end) as Joe_Biden,
		count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
		from 
  pre_election_survey$
  where f_religcat1 = '1'
  --Vote intention among participants who identify as Catholic (religcat1 = 2)
    select count(case when votegen20_w75 = '1' then votegen20_w75 end) as Donald_Trump,
		   count(case when votegen20_w75 = '2' then votegen20_w75 end) as Joe_Biden,
		   count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		   count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
   from 
   pre_election_survey$
   where f_religcat1 = '2'
    --Vote intention among participants who identify as Unaffiliated (religcat1 = 3)
    select count(case when votegen20_w75 = '1' then votegen20_w75 end) as Donald_Trump,
		   count(case when votegen20_w75 = '2' then votegen20_w75 end) as Joe_Biden,
		   count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		   count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
	from 
    pre_election_survey$
    where f_religcat1 = '3'
	--Presidential vote intention among participants who plan to support a Republican for Congress (CONG_W75 = 1)
	  select count(case when votegen20_w75 = '1' then votegen20_w75 end) as Donald_Trump,
		count(case when votegen20_w75 = '2' then votegen20_w75 end) as Joe_Biden,
		count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
		from 
        pre_election_survey$
        where CONG_W75 = '1'

	--Presidential vote intention among participants who plan to support a Democrat for Congress (CONG_W75 = 2)
		  select count(case when votegen20_w75 = '1' then votegen20_w75 end) as Donald_Trump,
		count(case when votegen20_w75 = '2' then votegen20_w75 end) as Joe_Biden,
		count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
		from 
        pre_election_survey$
        where CONG_W75 = '2'

   --Congressional vote intention among participants who plan to support Jo Jorgensen (Libertarian) for President (votegen20_w75 =3)
   select count(case when cong_w75 = '1' then cong_w75 end) as House_GOP,
		  count(case when cong_w75 = '2' then cong_w75 end) as House_DEM
		from 
        pre_election_survey$
        where VOTEGEN20_W75 = '3'

	


