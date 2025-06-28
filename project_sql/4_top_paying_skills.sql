/*
question: what are the top skills based on salary?
-look at the average salary associated with each skills for data analyst roles.
-focuses on roles with specific salaries, available remotely and in Nigeria.
-why? it reveals how different skills impact salary level for data analyst and helps identify the most financially rewarding skills to acquire or improve.
*/

SELECT 
   round (avg(salary_year_avg), 0)   average_salary,
    skills_dim.skills

from job_postings_fact    job_posting
INNER JOIN skills_job_dim  skills_job
on job_posting.job_id=skills_job.job_id
INNER JOIN skills_dim   skills_dim
on skills_job.skill_id=skills_dim.skill_id
WHERE job_posting.job_title_short='Data Analyst' and 
salary_year_avg is not null AND
job_work_from_home= true
and job_location in('Anywhere', 'Nigeria')
GROUP BY skills_dim.skills
ORDER BY average_salary DESC
limit 30;
/*
Here is a breakdown of the result of the top paying skills for Data Analyst:
💻 Advanced Programming & ML Libraries like PySpark, Pandas, NumPy, and Scikit-learn consistently command the highest salaries — showing the value of coding + machine learning proficiency.

☁️ Cloud & Big Data Tools such as Databricks, Airflow, GCP, and Kubernetes drive top-tier pay, proving that cloud-native and data pipeline expertise is now crucial for analysts.

🛠️ DevOps & Engineering Tools like GitLab, Jenkins, Bitbucket, and Atlassian are surprisingly lucrative — highlighting a growing demand for analysts with version control and automation skills.

📈 Enterprise Analytics Platforms (e.g., Datarobot, MicroStrategy, Crystal Reports) remain highly valued, especially in corporate environments where specialized tools enhance decision-making.

| Rank | Skill         | Avg. Salary (USD) |
| ---- | ------------- | ----------------- |
| 1    | PySpark       | \$208,172         |
| 2    | Bitbucket     | \$189,155         |
| 3    | Watson        | \$160,515         |
| 4    | Couchbase     | \$160,515         |
| 5    | Datarobot     | \$155,486         |
| 6    | GitLab        | \$154,500         |
| 7    | Swift         | \$153,750         |
| 8    | Jupyter       | \$152,777         |
| 9    | Pandas        | \$151,821         |
| 10   | Golang        | \$145,000         |
| 11   | Elasticsearch | \$145,000         |
| 12   | NumPy         | \$143,513         |
| 13   | Databricks    | \$141,907         |
| 14   | Linux         | \$136,508         |
| 15   | Kubernetes    | \$132,500         |
| 16   | Atlassian     | \$131,162         |
| 17   | Twilio        | \$127,000         |
| 18   | Airflow       | \$126,103         |
| 19   | Scikit-learn  | \$125,781         |
| 20   | Jenkins       | \$125,436         |
| 21   | Notion        | \$125,000         |
| 22   | Scala         | \$124,903         |
| 23   | PostgreSQL    | \$123,879         |
| 24   | GCP           | \$122,500         |
| 25   | MicroStrategy | \$121,619         |
| 26   | Crystal       | \$120,100         |
| 27   | Go            | \$115,320         |
| 28   | Confluence    | \$114,210         |
| 29   | DB2           | \$114,072         |
| 30   | Hadoop        | \$113,193         |

[
  {
    "average_salary": "208172",
    "skills": "pyspark"
  },
  {
    "average_salary": "189155",
    "skills": "bitbucket"
  },
  {
    "average_salary": "160515",
    "skills": "watson"
  },
  {
    "average_salary": "160515",
    "skills": "couchbase"
  },
  {
    "average_salary": "155486",
    "skills": "datarobot"
  },
  {
    "average_salary": "154500",
    "skills": "gitlab"
  },
  {
    "average_salary": "153750",
    "skills": "swift"
  },
  {
    "average_salary": "152777",
    "skills": "jupyter"
  },
  {
    "average_salary": "151821",
    "skills": "pandas"
  },
  {
    "average_salary": "145000",
    "skills": "golang"
  },
  {
    "average_salary": "145000",
    "skills": "elasticsearch"
  },
  {
    "average_salary": "143513",
    "skills": "numpy"
  },
  {
    "average_salary": "141907",
    "skills": "databricks"
  },
  {
    "average_salary": "136508",
    "skills": "linux"
  },
  {
    "average_salary": "132500",
    "skills": "kubernetes"
  },
  {
    "average_salary": "131162",
    "skills": "atlassian"
  },
  {
    "average_salary": "127000",
    "skills": "twilio"
  },
  {
    "average_salary": "126103",
    "skills": "airflow"
  },
  {
    "average_salary": "125781",
    "skills": "scikit-learn"
  },
  {
    "average_salary": "125436",
    "skills": "jenkins"
  },
  {
    "average_salary": "125000",
    "skills": "notion"
  },
  {
    "average_salary": "124903",
    "skills": "scala"
  },
  {
    "average_salary": "123879",
    "skills": "postgresql"
  },
  {
    "average_salary": "122500",
    "skills": "gcp"
  },
  {
    "average_salary": "121619",
    "skills": "microstrategy"
  },
  {
    "average_salary": "120100",
    "skills": "crystal"
  },
  {
    "average_salary": "115320",
    "skills": "go"
  },
  {
    "average_salary": "114210",
    "skills": "confluence"
  },
  {
    "average_salary": "114072",
    "skills": "db2"
  },
  {
    "average_salary": "113193",
    "skills": "hadoop"
  }
]
*/