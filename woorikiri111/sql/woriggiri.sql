INSERT INTO T_MOIM
       		(MOIM_SQ, MOIM_CD, MOIM_CA, MOIM_TITLE, MOIM_TAG, 
            MOIM_CNT, MOIM_MEM_ID, MOIM_INTRO, MOIM_CREATE_DT, MOIM_DEL_FL, 
            MOIM_IS_OK_FL, MOIM_HIT, MOIM_DATE, MOIM_HOUR,MOIM_MIM, 
            MOIM_AGE_OPTION, MOIM_GENDER, MOIM_SDATE, MOIM_EDATE, 
            MOIM_ZIP_CODE, MOIM_ZONE_CODE, MOIM_ADDRESS, MOIM_ADDRESS_SUB)
VALUES      (MOIM_SEQ.NEXTVAL, 'ABC', '독서', '독서 모임', '독서, 30대, 여자',
            '20명', 'asd123', '30대들의 탁구모임입니다.', '2019.03.02', 'F',
            'F', 0, '2020.01.05','6시','30',
            '30', '여', '2019.12.05', '',
            '563-136', '', '서울특별시 강남구 강남동35-44번지', '대림빌딩103호'
            );