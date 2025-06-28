/*
question: what are the most optimal skills to acquire and improve (i.e it's in high demand and also high paying)?
-identify skills in high demand and associated with high average salaries for Data Analyst roles.
-conventrate on remote position with specified salaries.
-why? target skills that offers job security and financial profits offering strategic insights for career development in Data Analysis. 
*/

SELECT
    skills_dim.skill_id,
    skills,
    count(job_posting.job_id)  demand_skills,
    round(avg(salary_year_avg),0)   avg_salary
    FROM job_postings_fact  job_posting
    inner JOIN skills_job_dim   skills_job
    on job_posting.job_id=skills_job.job_id
    INNER JOIN skills_dim  skills_dim
    on skills_job.skill_id=skills_dim.skill_id
    WHERE salary_year_avg is not null and 
        job_title_short='Data Analyst' and
        job_location ='Anywhere'
    GROUP BY skills_dim.skill_id
    having count(job_posting.job_id)>10
    ORDER BY avg_salary DESC,demand_skills DESC 
    limit 30
    