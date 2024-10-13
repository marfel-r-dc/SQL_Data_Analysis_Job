/*
Question: What are the top paying jobs for data anlyst?
- 
*/

SELECT count (*)
FROM
    job_postings_fact
;

-- company names
SELECT COUNT (*)
FROM
    company_dim
;

-- describe table and check column headers
SELECT 
    column_name, 
    data_type, 
    character_maximum_length, 
    is_nullable, 
    column_default 
FROM 
  information_schema.columns 
WHERE 
  table_name = 'job_postings_fact';


SELECT *
FROM
    job_postings_fact
LIMIT 100
; 


SELECT
    job_id,
    job_title_short,
    salary_hour_avg


FROM
    job_postings_fact
ORDER BY
    salary_year_avg DESC
LIMIT 10
;