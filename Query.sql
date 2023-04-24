with temp_table as (
SELECT * 
FROM healthcare.inflation as inflation
UNION ALL 
SELECT *
FROM healthcare.consumption as consumption
UNION ALL
SELECT *
FROM healthcare.imports as imports
)

SELECT CASE when Column1 = 'YR2000' then Column2
									else null end as "ColumnYR2000",
from temp_table;

