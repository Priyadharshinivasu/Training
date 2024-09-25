SELECT L.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       L.MOV_STS as MOV_STS_PFMC,
       L.SCC_CD,
       L.lcc_cd,
       L.ecc_cd,
       L.rcc_cd,
       L.WK_SEQ,
       L.YEAR_WEEK,
       L.CONTINENT,
       SUM(CNT) AS total,
       SUM(DECODE(L.WK_SEQ, 1, CNT, 0)) AS WEEK01,
       SUM(DECODE(L.WK_SEQ, 2, CNT, 0)) AS WEEK02,
       SUM(DECODE(L.WK_SEQ, 3, CNT, 0)) AS WEEK03,
       SUM(DECODE(L.WK_SEQ, 4, CNT, 0)) AS WEEK04,
       SUM(DECODE(L.WK_SEQ, 5, CNT, 0)) AS WEEK05,
       SUM(DECODE(L.WK_SEQ, 6, CNT, 0)) AS WEEK06,
       SUM(DECODE(L.WK_SEQ, 7, CNT, 0)) AS WEEK07,
       SUM(DECODE(L.WK_SEQ, 8, CNT, 0)) AS WEEK08,
       SUM(DECODE(L.WK_SEQ, 9, CNT, 0)) AS WEEK09,
       SUM(DECODE(L.WK_SEQ, 10, CNT, 0)) AS WEEK10,
       SUM(DECODE(L.WK_SEQ, 11, CNT, 0)) AS WEEK11,
       SUM(DECODE(L.WK_SEQ, 12, CNT, 0)) AS WEEK12,
       SUM(DECODE(L.WK_SEQ, 13, CNT, 0)) AS WEEK13,
       SUM(DECODE(L.WK_SEQ, 14, CNT, 0)) AS WEEK14,
       SUM(DECODE(L.WK_SEQ, 15, CNT, 0)) AS WEEK15,
       SUM(DECODE(L.WK_SEQ, 16, CNT, 0)) AS WEEK16,
       SUM(DECODE(L.WK_SEQ, 17, CNT, 0)) AS WEEK17,
       SUM(DECODE(L.WK_SEQ, 18, CNT, 0)) AS WEEK18,
       SUM(DECODE(L.WK_SEQ, 19, CNT, 0)) AS WEEK19,
       SUM(DECODE(L.WK_SEQ, 20, CNT, 0)) AS WEEK20,
       SUM(DECODE(L.WK_SEQ, 21, CNT, 0)) AS WEEK21,
       SUM(DECODE(L.WK_SEQ, 22, CNT, 0)) AS WEEK22,
       SUM(DECODE(L.WK_SEQ, 23, CNT, 0)) AS WEEK23,
       SUM(DECODE(L.WK_SEQ, 24, CNT, 0)) AS WEEK24,
       SUM(DECODE(L.WK_SEQ, 25, CNT, 0)) AS WEEK25,
       SUM(DECODE(L.WK_SEQ, 26, CNT, 0)) AS WEEK26,
       SUM(DECODE(L.WK_SEQ, 27, CNT, 0)) AS WEEK27,
       SUM(DECODE(L.WK_SEQ, 28, CNT, 0)) AS WEEK28,
       SUM(DECODE(L.WK_SEQ, 29, CNT, 0)) AS WEEK29,
       SUM(DECODE(L.WK_SEQ, 30, CNT, 0)) AS WEEK30,
       SUM(DECODE(L.WK_SEQ, 31, CNT, 0)) AS WEEK31,
       SUM(DECODE(L.WK_SEQ, 32, CNT, 0)) AS WEEK32,
       SUM(DECODE(L.WK_SEQ, 33, CNT, 0)) AS WEEK33,
       SUM(DECODE(L.WK_SEQ, 34, CNT, 0)) AS WEEK34,
       SUM(DECODE(L.WK_SEQ, 35, CNT, 0)) AS WEEK35,
       SUM(DECODE(L.WK_SEQ, 36, CNT, 0)) AS WEEK36,
       SUM(DECODE(L.WK_SEQ, 37, CNT, 0)) AS WEEK37,
       SUM(DECODE(L.WK_SEQ, 38, CNT, 0)) AS WEEK38,
       SUM(DECODE(L.WK_SEQ, 39, CNT, 0)) AS WEEK39,
       SUM(DECODE(L.WK_SEQ, 40, CNT, 0)) AS WEEK40,
       SUM(DECODE(L.WK_SEQ, 41, CNT, 0)) AS WEEK41,
       SUM(DECODE(L.WK_SEQ, 42, CNT, 0)) AS WEEK42,
       SUM(DECODE(L.WK_SEQ, 43, CNT, 0)) AS WEEK43,
       SUM(DECODE(L.WK_SEQ, 44, CNT, 0)) AS WEEK44,
       SUM(DECODE(L.WK_SEQ, 45, CNT, 0)) AS WEEK45,
       SUM(DECODE(L.WK_SEQ, 46, CNT, 0)) AS WEEK46,
       SUM(DECODE(L.WK_SEQ, 47, CNT, 0)) AS WEEK47,
       SUM(DECODE(L.WK_SEQ, 48, CNT, 0)) AS WEEK48,
       SUM(DECODE(L.WK_SEQ, 49, CNT, 0)) AS WEEK49,
       SUM(DECODE(L.WK_SEQ, 50, CNT, 0)) AS WEEK50,
       SUM(DECODE(L.WK_SEQ, 51, CNT, 0)) AS WEEK51,
       SUM(DECODE(L.WK_SEQ, 52, CNT, 0)) AS WEEK52

  FROM (

SELECT /*+ ORDERED USE_NL ( A S ) */
      --- 'VD-IC' AS MOV_STS,
       MOV_STS,
       S.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       S.DP_SEQ AS DSP_SEQ,
       A.WK_SEQ AS WK_SEQ,
       A.CNT AS CNT,
       A.SCC_CD AS SCC_CD,
       A.LCC_CD AS LCC_CD,
       A.ECC_CD AS ECC_CD,
       A.RCC_CD AS RCC_CD,
       A.YEAR_WEEK AS YEAR_WEEK,
       A.CONTINENT AS CONTINENT
FROM (
    SELECT /*+ INDEX ( M XIE6CTM_MOVEMENT ) */
            CASE 
                 WHEN M.MVMT_STS_CD='ID' THEN SUBSTR('ID', 0, 2) 
                WHEN M.MVMT_STS_CD=SUBSTR('OP', 0, 2) THEN 'OP' 
                WHEN M.MVMT_STS_CD=SUBSTR('OC',0,2) THEN 'OC'
                WHEN M.MVMT_STS_CD=SUBSTR('IC',0,2) THEN 'IC'
                END AS MOV_STS,
           M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTINENT
    FROM CTM_MOVEMENT M,
         EQR_WK_PRD K,
         MST_CONTAINER C,
         MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
         (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK BETWEEN '202301' AND '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W
    WHERE MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD
      AND M.CNMV_EVNT_DT BETWEEN
           (SELECT TO_DATE(K.WK_ST_DT, 'YYYYMMDD') FROM EQR_WK_PRD K WHERE K.PLN_YR || K.PLN_WK = '202301')
           AND
           (SELECT TO_DATE(K.WK_END_DT, 'YYYYMMDD') + INTERVAL '1' DAY FROM EQR_WK_PRD K WHERE K.PLN_YR || K.PLN_WK = '202301'/*to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')*/)
      AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
      AND M.MVMT_STS_CD IN( SUBSTR('ID', 0, 2),SUBSTR('OP', 0, 2),SUBSTR('OC',0,2),SUBSTR('IC',0,2))
      
      AND M.ORG_YD_CD IN
           (SELECT /*+ ORDERED USE_NL ( G L Y ) */
                Y.YD_CD
            FROM MDM_EQ_ORZ_CHT G, MDM_LOCATION L, MDM_YARD Y
            WHERE Y.LOC_CD = L.LOC_CD
              AND L.SCC_CD = G.SCC_CD
              AND G.LCC_CD = 'AEDXB'
           )
           
      AND M.CNTR_NO = C.CNTR_NO
      AND NVL(C.LSTM_CD, '  ') <> 'SH'
      AND M.ORG_YD_CD IN (
           SELECT /*+ ORDERED USE_NL ( G L Y ) */
                Y.YD_CD
           FROM MDM_LOCATION L, MDM_YARD Y
           WHERE Y.LOC_CD = L.LOC_CD
             AND L.SCC_CD = Z.SCC_CD
      )
    GROUP BY M.CNTR_TPSZ_CD, W.WK_SEQ, Z.SCC_CD, Z.LCC_CD, Z.ECC_CD, Z.RCC_CD, W.YEAR_WEEK, MC.CONTI_NM,M.MVMT_STS_CD
   
    ORDER BY W.WK_SEQ
) A,
CIM_TP_SZ_DP_SEQ S
WHERE A.CNTR_TPSZ_CD = S.CNTR_TPSZ_CD
GROUP BY  A.MOV_STS,
       S.CNTR_TPSZ_CD,
       S.DP_SEQ,
       A.WK_SEQ,
       A.SCC_CD,
       A.LCC_CD,
       A.ECC_CD,
       A.RCC_CD,
       A.YEAR_WEEK,
       A.CONTINENT
       ,A.CNT
UNION ALL
 SELECT /*+ ORDERED USE_NL ( A S ) */
       A.MVMT_STS,
       S.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       S.DP_SEQ AS DSP_SEQ,
       A.WK_SEQ AS WK_SEQ,
       SUM(A.CNT) AS CNT,
       A.SCC_CD AS SCC_CD,
       A.LCC_CD AS LCC_CD,
       A.ECC_CD AS ECC_CD,
       A.RCC_CD AS RCC_CD,
       A.YEAR_WEEK AS YEAR_WEEK,
       A.CONTI_NM AS CONTINENT
FROM (
    SELECT /*+ INDEX( M XIE6CTM_MOVEMENT ) */
           CASE 
               WHEN M.MVMT_STS_CD=SUBSTR('MTIDMG',0,2)  AND  (         
                        SELECT /*+ INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                            MM.MVMT_STS_CD  /*  pre_mvmt_sts_cd   */
                        FROM    CTM_MOVEMENT MM
                        WHERE   MM.CNTR_NO = M.CNTR_NO  
                        AND     MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') ||MM.CNMV_SPLIT_NO <         
                                M.CNMV_YR||TO_CHAR(M.CNMV_SEQ,'0000')||M.CNMV_SPLIT_NO
                        AND     ROWNUM = 1
                      )=SUBSTR('MTIDMG',3,2) THEN  SUBSTR('MTIDMG',5) 
            
           END AS MVMT_STS,
           M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM
    FROM CTM_MOVEMENT M,
         EQR_WK_PRD K,
         MST_CONTAINER C,
         MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
         (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W
    WHERE MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD
      AND M.CNMV_EVNT_DT BETWEEN
          (SELECT TO_DATE(K.WK_ST_DT, 'YYYYMMDD') + .0
           FROM EQR_WK_PRD K
           WHERE K.PLN_YR || K.PLN_WK = '202301'
          ) AND (SELECT TO_DATE(K.WK_END_DT, 'YYYYMMDD') + .99999
                  FROM EQR_WK_PRD K
                  WHERE K.PLN_YR || K.PLN_WK = '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
                 )
      AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
      AND M.MVMT_STS_CD IN ('VL',SUBSTR('MTVDVD-MT', 0, 2),SUBSTR('MTIDMG',0,2))
      AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_EQ_ORZ_CHT G
          JOIN MDM_LOCATION L ON L.SCC_CD = G.SCC_CD
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD  AND L.SCC_CD = G.SCC_CD
         WHERE G.LCC_CD = 'AEDXB'
      )
      AND (SELECT /*+ INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                 MM.MVMT_STS_CD /*  pre_mvmt_sts_cd   */
          FROM CTM_MOVEMENT MM
          WHERE MM.CNTR_NO = M.CNTR_NO
            AND MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') || MM.CNMV_SPLIT_NO <
                M.CNMV_YR || TO_CHAR(M.CNMV_SEQ, '0000') || M.CNMV_SPLIT_NO
            AND ROWNUM = 1
         ) IN (SUBSTR('MTIDMG',3,2) )
      AND M.CNTR_NO = C.CNTR_NO
      AND NVL(C.LSTM_CD, '  ') <> 'SH'
      AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_LOCATION L
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD
          WHERE L.SCC_CD = Z.SCC_CD
      )
    GROUP BY M.CNTR_TPSZ_CD,
             M.MVMT_STS_CD,
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
    ORDER BY W.WK_SEQ
) A,
CIM_TP_SZ_DP_SEQ S
WHERE A.CNTR_TPSZ_CD = S.CNTR_TPSZ_CD
GROUP BY  A.MVMT_STS,
       S.CNTR_TPSZ_CD,
       S.DP_SEQ,
       A.WK_SEQ,
       A.SCC_CD,
       A.LCC_CD,
       A.ECC_CD,
       A.RCC_CD,
       A.YEAR_WEEK,
       A.CONTI_NM


) L
WHERE 1=1
AND L.MOV_STS IS NOT NULL
 GROUP BY L.CNTR_TPSZ_CD,
          L.MOV_STS,
          L.DSP_SEQ,
          L.SCC_CD,
          L.lcc_cd,
          L.ecc_cd,
          L.rcc_cd,
          L.YEAR_WEEK,
          L.WK_SEQ,
          L.CONTINENT
          
UNION ALL


SELECT L.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,-----NEW-13/09/2024
       (CASE WHEN L.MOV_STS IN ('MG', 'VD-MT', 'MR') THEN 'MT'
       ELSE L.MOV_STS END) AS MOV_STS_PFMC,
       L.SCC_CD,
       L.lcc_cd,
       L.ecc_cd,
       L.rcc_cd,
       L.WK_SEQ,
       L.YEAR_WEEK,
       L.CONTINENT,
       SUM(CNT) AS total,
       SUM(DECODE(L.WK_SEQ, 1, CNT, 0)) AS WEEK01,
       SUM(DECODE(L.WK_SEQ, 2, CNT, 0)) AS WEEK02,
       SUM(DECODE(L.WK_SEQ, 3, CNT, 0)) AS WEEK03,
       SUM(DECODE(L.WK_SEQ, 4, CNT, 0)) AS WEEK04,
       SUM(DECODE(L.WK_SEQ, 5, CNT, 0)) AS WEEK05,
       SUM(DECODE(L.WK_SEQ, 6, CNT, 0)) AS WEEK06,
       SUM(DECODE(L.WK_SEQ, 7, CNT, 0)) AS WEEK07,
       SUM(DECODE(L.WK_SEQ, 8, CNT, 0)) AS WEEK08,
       SUM(DECODE(L.WK_SEQ, 9, CNT, 0)) AS WEEK09,
       SUM(DECODE(L.WK_SEQ, 10, CNT, 0)) AS WEEK10,
       SUM(DECODE(L.WK_SEQ, 11, CNT, 0)) AS WEEK11,
       SUM(DECODE(L.WK_SEQ, 12, CNT, 0)) AS WEEK12,
       SUM(DECODE(L.WK_SEQ, 13, CNT, 0)) AS WEEK13,
       SUM(DECODE(L.WK_SEQ, 14, CNT, 0)) AS WEEK14,
       SUM(DECODE(L.WK_SEQ, 15, CNT, 0)) AS WEEK15,
       SUM(DECODE(L.WK_SEQ, 16, CNT, 0)) AS WEEK16,
       SUM(DECODE(L.WK_SEQ, 17, CNT, 0)) AS WEEK17,
       SUM(DECODE(L.WK_SEQ, 18, CNT, 0)) AS WEEK18,
       SUM(DECODE(L.WK_SEQ, 19, CNT, 0)) AS WEEK19,
       SUM(DECODE(L.WK_SEQ, 20, CNT, 0)) AS WEEK20,
       SUM(DECODE(L.WK_SEQ, 21, CNT, 0)) AS WEEK21,
       SUM(DECODE(L.WK_SEQ, 22, CNT, 0)) AS WEEK22,
       SUM(DECODE(L.WK_SEQ, 23, CNT, 0)) AS WEEK23,
       SUM(DECODE(L.WK_SEQ, 24, CNT, 0)) AS WEEK24,
       SUM(DECODE(L.WK_SEQ, 25, CNT, 0)) AS WEEK25,
       SUM(DECODE(L.WK_SEQ, 26, CNT, 0)) AS WEEK26,
       SUM(DECODE(L.WK_SEQ, 27, CNT, 0)) AS WEEK27,
       SUM(DECODE(L.WK_SEQ, 28, CNT, 0)) AS WEEK28,
       SUM(DECODE(L.WK_SEQ, 29, CNT, 0)) AS WEEK29,
       SUM(DECODE(L.WK_SEQ, 30, CNT, 0)) AS WEEK30,
       SUM(DECODE(L.WK_SEQ, 31, CNT, 0)) AS WEEK31,
       SUM(DECODE(L.WK_SEQ, 32, CNT, 0)) AS WEEK32,
       SUM(DECODE(L.WK_SEQ, 33, CNT, 0)) AS WEEK33,
       SUM(DECODE(L.WK_SEQ, 34, CNT, 0)) AS WEEK34,
       SUM(DECODE(L.WK_SEQ, 35, CNT, 0)) AS WEEK35,
       SUM(DECODE(L.WK_SEQ, 36, CNT, 0)) AS WEEK36,
       SUM(DECODE(L.WK_SEQ, 37, CNT, 0)) AS WEEK37,
       SUM(DECODE(L.WK_SEQ, 38, CNT, 0)) AS WEEK38,
       SUM(DECODE(L.WK_SEQ, 39, CNT, 0)) AS WEEK39,
       SUM(DECODE(L.WK_SEQ, 40, CNT, 0)) AS WEEK40,
       SUM(DECODE(L.WK_SEQ, 41, CNT, 0)) AS WEEK41,
       SUM(DECODE(L.WK_SEQ, 42, CNT, 0)) AS WEEK42,
       SUM(DECODE(L.WK_SEQ, 43, CNT, 0)) AS WEEK43,
       SUM(DECODE(L.WK_SEQ, 44, CNT, 0)) AS WEEK44,
       SUM(DECODE(L.WK_SEQ, 45, CNT, 0)) AS WEEK45,
       SUM(DECODE(L.WK_SEQ, 46, CNT, 0)) AS WEEK46,
       SUM(DECODE(L.WK_SEQ, 47, CNT, 0)) AS WEEK47,
       SUM(DECODE(L.WK_SEQ, 48, CNT, 0)) AS WEEK48,
       SUM(DECODE(L.WK_SEQ, 49, CNT, 0)) AS WEEK49,
       SUM(DECODE(L.WK_SEQ, 50, CNT, 0)) AS WEEK50,
       SUM(DECODE(L.WK_SEQ, 51, CNT, 0)) AS WEEK51,
       SUM(DECODE(L.WK_SEQ, 52, CNT, 0)) AS WEEK52

  FROM (

SELECT /*+ ORDERED USE_NL ( A S ) */
      --- 'VD-IC' AS MOV_STS,
       MOV_STS,
      S.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       S.DP_SEQ AS DSP_SEQ,
       A.WK_SEQ AS WK_SEQ,
       SUM(A.CNT) AS CNT,
       A.SCC_CD AS SCC_CD,
       A.LCC_CD AS LCC_CD,
       A.ECC_CD AS ECC_CD,
       A.RCC_CD AS RCC_CD,
       A.YEAR_WEEK AS YEAR_WEEK,
       A.CONTI_NM AS CONTINENT 
       FROM (

SELECT   /*+ INDEX( M XIE6CTM_MOVEMENT ) */
        'MG'          MOV_STS,
           M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM
    FROM CTM_MOVEMENT M,
         EQR_WK_PRD K,
         MST_CONTAINER C,
         MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
          (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W               
            WHERE MC.CONTI_CD = ML.CONTI_CD
             AND ML.LOC_CD = Z.SCC_CD 
             
             AND M.CNMV_EVNT_DT BETWEEN
          (SELECT TO_DATE(K.WK_ST_DT, 'YYYYMMDD') + .0
           FROM EQR_WK_PRD K
           WHERE K.PLN_YR || K.PLN_WK = '202301'
          ) AND (SELECT TO_DATE(K.WK_END_DT, 'YYYYMMDD') + .99999
                  FROM EQR_WK_PRD K
                  WHERE K.PLN_YR || K.PLN_WK = '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
                 )
      AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
                  AND   M.MVMT_STS_CD = 'MT'
                  
      AND  NVL(M.MVMT_CRE_TP_CD,'  ')  NOT IN ( 'C','L' )
            AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_EQ_ORZ_CHT G
          JOIN MDM_LOCATION L ON L.SCC_CD = G.SCC_CD
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD  AND L.SCC_CD = G.SCC_CD
         WHERE G.LCC_CD = 'AEDXB'
      )
          /* ----------------> 2010.05.13 Pre MVMT STS Check Logic 수정 */
    AND    'ID'  =  (         
                        SELECT /*+ INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                            MM.MVMT_STS_CD  /*  pre_mvmt_sts_cd   */
                        FROM    CTM_MOVEMENT MM
                        WHERE   MM.CNTR_NO = M.CNTR_NO  
                        AND     MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') ||MM.CNMV_SPLIT_NO <         
                                M.CNMV_YR||TO_CHAR(M.CNMV_SEQ,'0000')||M.CNMV_SPLIT_NO
                        AND     ROWNUM = 1
                      )
    /* <---------------- 2010.05.13 Pre MVMT STS Check Logic 수정 */    
    
          AND   M.CNTR_NO        = C.CNTR_NO
            AND   NVL(C.LSTM_CD, '  ') <> 'SH' /* soc  */
            
            AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_LOCATION L
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD
          WHERE L.SCC_CD = Z.SCC_CD
      )
     GROUP BY M.CNTR_TPSZ_CD,
             /*M.MVMT_STS_CD*/'MG',
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
    ORDER BY W.WK_SEQ
) A,
CIM_TP_SZ_DP_SEQ S
WHERE A.CNTR_TPSZ_CD = S.CNTR_TPSZ_CD
GROUP BY  A.MOV_STS,
       S.CNTR_TPSZ_CD,
       S.DP_SEQ,
       A.WK_SEQ,
       A.SCC_CD,
       A.LCC_CD,
       A.ECC_CD,
       A.RCC_CD,
       A.YEAR_WEEK,
       A.CONTI_NM

  UNION ALL
  
SELECT  /*+ ORDERED USE_NL ( A S ) */
      A.MOV_STS,
       S.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       S.DP_SEQ AS DSP_SEQ,
       A.WK_SEQ AS WK_SEQ,
       SUM(A.CNT) AS CNT,
       A.SCC_CD AS SCC_CD,
       A.LCC_CD AS LCC_CD,
       A.ECC_CD AS ECC_CD,
       A.RCC_CD AS RCC_CD,
       A.YEAR_WEEK AS YEAR_WEEK,
       A.CONTI_NM AS CONTINENT
  FROM  (

      SELECT   /*+ INDEX( M XIE6CTM_MOVEMENT ) */
        'MP'          MOV_STS,
        M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM
      FROM    CTM_MOVEMENT        M,
                    EQR_WK_PRD      K,
                    MST_CONTAINER    C,
                    MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
          (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W               
    WHERE MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD AND M.CNMV_EVNT_DT  BETWEEN  ( 
          SELECT TO_DATE(K.WK_ST_DT,'YYYYMMDD') + .0
          FROM   EQR_WK_PRD k
          WHERE  K.PLN_YR||K.PLN_WK = '202301'---'202407'
          )  
  AND        ( 
           SELECT TO_DATE(K.WK_END_DT,'YYYYMMDD') + .99999
           FROM   EQR_WK_PRD k
           WHERE  K.PLN_YR||K.PLN_WK = '202301'--to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
          ) 
  
     AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
      AND   M.MVMT_STS_CD = 'MT'
    AND   M.CNTR_NO = C.CNTR_NO
            AND   NVL(C.LSTM_CD, '  ') <> 'SH' /* soc  */
          AND   NVL(M.MVMT_CRE_TP_CD, '  ') NOT IN ( 'C','L' ) 
          AND M.ORG_YD_CD IN (
        SELECT   /*+ ORDERED USE_NL( G L Y )  */
        Y.YD_CD
        FROM 
              MDM_EQ_ORZ_CHT G,
              MDM_LOCATION L,
        MDM_YARD Y
        WHERE Y.LOC_CD = L.LOC_CD
          AND L.SCC_CD = G.SCC_CD
         AND G.LCC_CD = 'AEDXB'    /* inquiryLevel = 'LCC'*/
              ) 
        /* ----------------> 2010.05.13 Pre MVMT STS Check Logic 수정 */
    AND    'XX'  =  (         
                        SELECT /*+ INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                            MM.MVMT_STS_CD  /*  pre_mvmt_sts_cd   */
                        FROM    CTM_MOVEMENT MM
                        WHERE   MM.CNTR_NO = M.CNTR_NO  
                        AND     MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') ||MM.CNMV_SPLIT_NO <         
                                M.CNMV_YR||TO_CHAR(M.CNMV_SEQ,'0000')||M.CNMV_SPLIT_NO
                        AND     ROWNUM = 1
                      )
    /* <---------------- 2010.05.13 Pre MVMT STS Check Logic 수정 */    

     GROUP BY M.CNTR_TPSZ_CD,
             /*M.MVMT_STS_CD*/'MP',
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
    

    UNION ALL

  SELECT   /*+ INDEX( M XIE6CTM_MOVEMENT ) */
    'MP'          MOV_STS,
    M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM     
  FROM  CTM_MOVEMENT M,
            EQR_WK_PRD   K,
            MST_CONTAINER C,
            MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
      (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'--to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W               
    WHERE   MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD AND M.CNMV_EVNT_DT  BETWEEN  ( 
          SELECT TO_DATE(K.WK_ST_DT,'YYYYMMDD') + .0
          FROM   EQR_WK_PRD k
          WHERE  K.PLN_YR||K.PLN_WK = '202301'
          )  
  AND        ( 
           SELECT TO_DATE(K.WK_END_DT,'YYYYMMDD') + .99999
           FROM   EQR_WK_PRD k
           WHERE  K.PLN_YR||K.PLN_WK = '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
          ) 
  
     AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
    
      AND   M.MVMT_STS_CD = 'MT'
      AND   M.CNTR_NO = C.CNTR_NO
          AND   NVL(C.LSTM_CD, '  ') <> 'SH' /* soc  */
        AND   NVL(M.MVMT_CRE_TP_CD, '  ') NOT IN ( 'C','L' ) 
    AND M.CNMV_CYC_NO = 1 
        AND M.ORG_YD_CD IN (
              SELECT   /*+ ORDERED USE_NL( G L Y )  */
              Y.YD_CD
              FROM 
                    MDM_EQ_ORZ_CHT G,
                    MDM_LOCATION L,
              MDM_YARD Y
          WHERE  Y.LOC_CD = L.LOC_CD
          AND    L.SCC_CD = G.SCC_CD
                      AND G.LCC_CD = 'AEDXB'    /* inquiryLevel = 'LCC'*/
                    ) 
        GROUP BY M.CNTR_TPSZ_CD,
             /*M.MVMT_STS_CD*/'MP',
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
   /* ORDER BY W.WK_SEQ*/)A,CIM_TP_SZ_DP_SEQ S
  WHERE A.CNTR_TPSZ_CD(+) = S.CNTR_TPSZ_CD
  GROUP BY  A.MOV_STS,
       S.CNTR_TPSZ_CD,
       S.DP_SEQ,
       A.WK_SEQ,
       A.SCC_CD,
       A.LCC_CD,
       A.ECC_CD,
       A.RCC_CD,
       A.YEAR_WEEK,
       A.CONTI_NM
  
 UNION ALL
      SELECT  /*+ ORDERED USE_NL ( A S ) */
          'MR'        MOV_STS,
          S.CNTR_TPSZ_CD      CNTR_TPSZ_CD,
          S.DP_SEQ      DSP_SEQ,
          A.WK_SEQ       WK_SEQ,  
          NVL(CNT,0)      CNT
          ,A.SCC_CD AS SCC_CD,
           A.LCC_CD AS LCC_CD,
           A.ECC_CD AS ECC_CD,
           A.RCC_CD AS RCC_CD,
           A.YEAR_WEEK AS YEAR_WEEK,
            A.CONTI_NM
      FROM  (
            SELECT 
                'MR'          MOV_STS,
                M.CNTR_TPSZ_CD      CNTR_TPSZ_CD,
                W.WK_SEQ         WK_SEQ,
                COUNT(M.CNTR_NO)    CNT
                ,Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM
            FROM  CTM_MOVEMENT  M,
                MST_CONTAINER  C,
                                EQR_WK_PRD  K,
                                MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
                               (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W            
    WHERE   MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD and M.CNMV_EVNT_DT BETWEEN
          (SELECT TO_DATE(K.WK_ST_DT, 'YYYYMMDD') + .0
           FROM EQR_WK_PRD K
           WHERE K.PLN_YR || K.PLN_WK = '202301'
          ) AND (SELECT TO_DATE(K.WK_END_DT, 'YYYYMMDD') + .99999
                  FROM EQR_WK_PRD K
                  WHERE K.PLN_YR || K.PLN_WK = '202301'---to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
                 )
      AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
      AND   M.MVMT_STS_CD = 'MT'
          AND NVL(M.MVMT_CRE_TP_CD, '  ') NOT IN ( 'C','L' ) 
         AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_EQ_ORZ_CHT G
          JOIN MDM_LOCATION L ON L.SCC_CD = G.SCC_CD
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD  AND L.SCC_CD = G.SCC_CD
        WHERE G.LCC_CD = 'AEDXB'
      )
          /* ----------------> 2010.05.13 Pre MVMT STS Check Logic 수정 */
      AND    'OK'  =  (         
                  SELECT /*+ ORDERED USE_NL(MM LL GG) INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                                              ---DECODE(GG.LCC_CD,'AEDXB','NO',
                                            DECODE(MM.MVMT_STS_CD,'EN','OK',
                      DECODE(MM.MVMT_STS_CD,'TN','OK','NO'))

                  --    MM.MVMT_STS_CD  /*  pre_mvmt_sts_cd   */
                  FROM    CTM_MOVEMENT  MM,
                      MDM_LOCATION  LL,
                      MDM_EQ_ORZ_CHT  GG
                  WHERE   MM.CNTR_NO = M.CNTR_NO  
                  AND     MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') ||MM.CNMV_SPLIT_NO <         
                          M.CNMV_YR||TO_CHAR(M.CNMV_SEQ,'0000')||M.CNMV_SPLIT_NO
                  AND    SUBSTR(MM.ORG_YD_CD, 1, 5)  = LL.LOC_CD
                  AND    LL.SCC_CD  = GG.SCC_CD
                  AND     ROWNUM    = 1
                )
    /* <---------------- 2010.05.13 Pre MVMT STS Check Logic 수정 */  
    AND    M.CNTR_NO  =  C.CNTR_NO
            AND   NVL(C.LSTM_CD, '  ') <> 'SH' /* soc  */
            AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_LOCATION L
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD
          WHERE L.SCC_CD = Z.SCC_CD
      )
    
    GROUP BY M.CNTR_TPSZ_CD,
           /*  M.MVMT_STS_CD*/'MR',
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
    ORDER BY W.WK_SEQ ) A,CIM_TP_SZ_DP_SEQ  S
  WHERE  A.CNTR_TPSZ_CD(+) = S.CNTR_TPSZ_CD
  
  UNION ALL
  SELECT  /*+ ORDERED USE_NL ( A S ) */------------'VD-MT'
       MOV_STS,
      S.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
       S.DP_SEQ AS DSP_SEQ,
       A.WK_SEQ AS WK_SEQ,
       SUM(A.CNT) AS CNT,
       A.SCC_CD AS SCC_CD,
       A.LCC_CD AS LCC_CD,
       A.ECC_CD AS ECC_CD,
       A.RCC_CD AS RCC_CD,
       A.YEAR_WEEK AS YEAR_WEEK,
       A.CONTI_NM AS CONTINENT
  FROM  (
      SELECT   /*+ INDEX( M XIE6CTM_MOVEMENT ) */
        'VD-MT'          MOV_STS,
         M.CNTR_TPSZ_CD AS CNTR_TPSZ_CD,
           W.WK_SEQ AS WK_SEQ,
           COUNT(M.MVMT_STS_CD) AS CNT,
           Z.SCC_CD AS SCC_CD,
           Z.LCC_CD AS LCC_CD,
           Z.ECC_CD AS ECC_CD,
           Z.RCC_CD AS RCC_CD,
           W.YEAR_WEEK AS YEAR_WEEK,
           MC.CONTI_NM AS CONTI_NM
      FROM    CTM_MOVEMENT        M,
                    EQR_WK_PRD      K,
                    MST_CONTAINER    C,
                    MDM_EQ_ORZ_CHT Z,
         MDM_CONTINENT MC,
         MDM_LOCATION ML,
        (SELECT /*+ INDEX ( XPKEQR_WK_PRD ) */
                 PLN_YR || PLN_WK AS YEAR_WEEK, 
                 ROWNUM AS WK_SEQ
          FROM EQR_WK_PRD
          WHERE PLN_YR || PLN_WK >= '202301'
            AND PLN_YR || PLN_WK <= '202301'--- to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
         ) W            
            WHERE  MC.CONTI_CD = ML.CONTI_CD
      AND ML.LOC_CD = Z.SCC_CD AND  M.CNMV_EVNT_DT BETWEEN
          (SELECT TO_DATE(K.WK_ST_DT, 'YYYYMMDD') + .0
           FROM EQR_WK_PRD K
           WHERE K.PLN_YR || K.PLN_WK = '202301'
          ) AND (SELECT TO_DATE(K.WK_END_DT, 'YYYYMMDD') + .99999
                  FROM EQR_WK_PRD K
                  WHERE K.PLN_YR || K.PLN_WK ='202301'-- to_char(SYSDATE,'YYYY') || TO_CHAR(SYSDATE, 'IW')
                 )
      AND TO_CHAR(M.CNMV_EVNT_DT, 'YYYYMMDD') BETWEEN K.WK_ST_DT AND
          K.WK_END_DT
      AND K.PLN_YR || K.PLN_WK = W.YEAR_WEEK
                  AND   M.MVMT_STS_CD = 'MT'
                  
      --AND  NVL(M.MVMT_CRE_TP_CD,'  ')  NOT IN ( 'C','L' )
            AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_EQ_ORZ_CHT G
          JOIN MDM_LOCATION L ON L.SCC_CD = G.SCC_CD
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD  AND L.SCC_CD = G.SCC_CD
         WHERE G.LCC_CD = 'AEDXB'
      )
          /* ----------------> 2010.05.13 Pre MVMT STS Check Logic 수정 */
    AND    'VD'  =  (         
                        SELECT /*+ INDEX_DESC ( MM XFN1CTM_MOVEMENT ) */
                            MM.MVMT_STS_CD  /*  pre_mvmt_sts_cd   */
                        FROM    CTM_MOVEMENT MM
                        WHERE   MM.CNTR_NO = M.CNTR_NO  
                        AND     MM.CNMV_YR || TO_CHAR(MM.CNMV_SEQ, '0000') ||MM.CNMV_SPLIT_NO <         
                                M.CNMV_YR||TO_CHAR(M.CNMV_SEQ,'0000')||M.CNMV_SPLIT_NO
                        AND     ROWNUM = 1
                      )
    /* <---------------- 2010.05.13 Pre MVMT STS Check Logic 수정 */    

          AND   M.CNTR_NO        = C.CNTR_NO
            AND   NVL(C.LSTM_CD, '  ') <> 'SH' /* soc  */
            AND M.ORG_YD_CD IN (
          SELECT /*+ ORDERED USE_NL( G L Y )  */
                 Y.YD_CD
          FROM MDM_LOCATION L
          JOIN MDM_YARD Y ON Y.LOC_CD = L.LOC_CD
          WHERE L.SCC_CD = Z.SCC_CD
      )
GROUP BY M.CNTR_TPSZ_CD,
             /*M.MVMT_STS_CD*/'VD-MT',
             W.WK_SEQ,
             Z.SCC_CD,
             Z.LCC_CD,
             Z.ECC_CD,
             Z.RCC_CD,
             W.YEAR_WEEK,
             MC.CONTI_NM,
             M.CNTR_NO,
             M.CNMV_YR,
             M.CNMV_SEQ,
             M.CNMV_SPLIT_NO
    ORDER BY W.WK_SEQ)A,CIM_TP_SZ_DP_SEQ S
  WHERE A.CNTR_TPSZ_CD(+) = S.CNTR_TPSZ_CD
  GROUP BY  A.MOV_STS,
       S.CNTR_TPSZ_CD,
       S.DP_SEQ,
       A.WK_SEQ,
       A.SCC_CD,
       A.LCC_CD,
       A.ECC_CD,
       A.RCC_CD,
       A.YEAR_WEEK,
       A.CONTI_NM
  
    ) L
WHERE 1=1
AND L.MOV_STS IS NOT NULL
AND L.lcc_cd IS NOT NULL
 GROUP BY 
          L.CNTR_TPSZ_CD,L.MOV_STS,
          L.DSP_SEQ,
          L.SCC_CD,
          L.lcc_cd,
          L.ecc_cd,
          L.rcc_cd,
          L.YEAR_WEEK,
          L.WK_SEQ,
          L.CONTINENT
--ORDER BY   L.DSP_SEQ

