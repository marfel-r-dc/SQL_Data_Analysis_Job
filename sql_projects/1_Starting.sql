CREATE TABLE job_applied (
    job_id INT,
    resume_file VARCHAR(255),
    cover_letter_sent BOOLEAN,
    status VARCHAR(50)

);


ALTER TABLE job_applied
ADD contact VARCHAR(50);

select * from job_applied;



ALTER TABLE job_applied
ALTER COLUMN contact TYPE TEXT;


ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;


ALTER TABLE job_applied
DROP COLUMN contact_name;

--Deleting table
DROP TABLE job_applied;

