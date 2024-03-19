-- 2022년 10월에 작성된 / 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일
-- 댓글 작성일 오름차순 + 게시글 제목 오름차순


SELECT b.TITLE,
        b.BOARD_ID,
        r.REPLY_ID,
        r.WRITER_ID,
        r.CONTENTS,
        date_format(r.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
    FROM USED_GOODS_BOARD AS b
    JOIN USED_GOODS_REPLY AS r
        ON b.BOARD_ID = r.BOARD_ID
        WHERE date_format(b.CREATED_DATE, '%Y-%m') = '2022-10'
        ORDER BY r.CREATED_DATE ASC, b.TITLE ASC;