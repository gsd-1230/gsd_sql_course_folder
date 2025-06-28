/*
question:what are the top paying data analyst jobs?
-identify the to 15 highest paying data analyst role that are available remotely and in Nigeria.
-focuses on the job postings with specified salaries.
-why? highlight the top paying oppurtunities for Data Analysts, offering insights into employment both romotely and Nigeria
*/

SELECT
    job_id,
    job_title,
    job_location,
    name  company_name,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact  job_posting
INNER JOIN company_dim  company
on job_posting.company_id=company.company_id
where 
    job_title_short ='Data Analyst' AND
    job_location in ('Nigeria', 'Anywhere') and
    salary_year_avg is not null
ORDER BY salary_year_avg DESC
limit 15;