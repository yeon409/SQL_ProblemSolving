-- 3월 생일 여성 - ID, 이름, 성별, 생년월일
-- 전화번호가 NULL이면 제외
-- ID 오름차순


SELECT MEMBER_ID,
        MEMBER_NAME,
        GENDER,
        date_format(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
    FROM MEMBER_PROFILE
    WHERE TLNO IS NOT NULL
    AND MONTH(DATE_OF_BIRTH) = 3
    AND GENDER = 'W';