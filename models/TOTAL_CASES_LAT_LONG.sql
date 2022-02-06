SELECT LATITUDE, LONGITUDE,  SUM(TOTAL_CASES) AS TOTAL_CASES
  FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_DIPTESH_KUNDU
  WHERE ISLAND IS NOT NULL
  GROUP BY  LATITUDE, LONGITUDE