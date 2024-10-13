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

--- sql code - 
SELECT	
	job_id,
	job_title,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
;