WITH TOTAL_RATES AS (select SUM(TOTAL_CASES) AS TOTAL_CASES,
SUM(TOTAL_DEATHS) AS TOTAL_DEATHS,
SUM(TOTAL_RECOVERED) AS TOTAL_RECOVERED,
SUM(TOTAL_ACTIVE_CASES) AS TOTAL_ACTIVE_CASES
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_DIPTESH_KUNDU)

SELECT ((TOTAL_DEATHS/TOTAL_CASES)*100) AS DEATH_RATE, 
((TOTAL_RECOVERED/(TOTAL_CASES-TOTAL_DEATHS))*100) AS RECOVERY_RATE,
 ((TOTAL_ACTIVE_CASES/TOTAL_CASES)*100) AS ACTIVE_CASES_RATE, * FROM TOTAL_RATES