/* 
question: what are the most in-demand skills for data analysts?
-join job postings to inner join skills_job_dim table and skills_dim table.
-identify the top 10 in-demand skils for a data analyst.
-focus on all the job postings.
-why? retrieve the top 5 skills with the most demand in the job market, providing insights into the most valuable skills for job seekers.
*/
SELECT 
    count(skills_dim.skill_id)   skills_demand_count,
    skills_dim.skills

from job_postings_fact    job_posting
INNER JOIN skills_job_dim  skills_job
on job_posting.job_id=skills_job.job_id
INNER JOIN skills_dim   skills_dim
on skills_job.skill_id=skills_dim.skill_id
WHERE job_posting.job_title_short='Data Analyst'
GROUP BY skills_dim.skills
ORDER BY skills_demand_count DESC
limit 10;