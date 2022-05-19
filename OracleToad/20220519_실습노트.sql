/* Formatted on 2022/05/19 오후 3:27:25 (QP5 v5.215.12089.38647) */
DDL(객체생성) - DBA

DCL(권한) - DB서버 운영자

DML(SELECT, INSERT, DELETE, UPDATE) : 데이터 조작어 (개발자에게 필요한것)

조회부분 (실력차이 날 수 있음) - 배송조회, 주문조회
입력,수정,삭제 (실력차이 거의 없음)

SELECT 컬럼명1, 컬럼명2, .. ..
  FROM 집합이름 (
SELECT문 - 인라인뷰)

--SELECT ename, job
  FROM emp

SELECT ename, job, hiredate
  FROM emp

SELECT ename 이름, job, hiredate
  FROM emp

  오라클의 옵티마이저 LIKE 일꾼 (JAVA의 JVM같은 역할)


SELECT ename, job, hiredate, sal, deptno
  FROM emp

 1) 우리 회사에 근무하는 사원 중에서 ALLEN사원의 급여는 얼마인가요?
SELECT ename, sal
  FROM emp
   WHERE ename = 'ALLEN';

2) 우리 회사에 근무하는 사원 중에서 급여가 1000달러 이상인 사원의 이름, 급여를 출력

SELECT ename, sal
  FROM emp
 WHERE sal >= 1000;

where... AND 교집합 -> 조회결과가 줄어든다

SELECT ename, sal
  FROM emp
 WHERE sal >= 1000 AND deptno = 20;

where ... OR 합집합 -> 둘 중 하나만 만족하면 된다

SELECT ename, sal
  FROM emp
 WHERE sal >= 1000 OR deptno = 20;

ALLEN을 소문자로 하거나 일부만 소문자로 해도 검색되지X 값자체가 대문자이므로

SELECT sal
  FROM emp
 WHERE ename = 'ALLEN'
 
 
SELECT ename,
       job,
       sal,
       hiredate,
       deptno
  FROM emp