/***
등급이 'VIP'인 고객들만 추출해보세요
***/

SELECT *
	FROM MEM 
	WHERE GRADE='VIP'--특정 필터링 할 때 WHERE절 사용

/***
등급이 'VIP'이면서 성별은 남성
***/

SELECT *
FROM MEM
WHERE GRADE='VIP' AND GD='M'

/***
연령이 '20~25세'혹은 '50~55세'이면서, 
성별이 '여성'인 고객들만 추출해보세요
***/
-- 잘못 뽑은 예시

SELECT *, YEAR(GETDATE())-YEAR(BIRTH_DT)+1 AS AGE
	FROM MEM
	WHERE YEAR(GETDATE())-YEAR(BIRTH_DT)+1 BETWEEN '20' AND '25'
		OR YEAR(GETDATE())-YEAR(BIRTH_DT)+1 BETWEEN '50' AND '55'
		AND GD='F'


SELECT *, YEAR(GETDATE())-YEAR(BIRTH_DT)+1 AS AGE
FROM MEM
WHERE (YEAR(GETDATE())-YEAR(BIRTH_DT)+1 BETWEEN '20' AND '25'
		OR YEAR(GETDATE())-YEAR(BIRTH_DT)+1 BETWEEN '50' AND '55')
		AND GD='F'


