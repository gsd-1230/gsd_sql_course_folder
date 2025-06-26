COPY skills_job_dim
FROM 'C:\Users\Public\Documents\gsd_sql_course_folder\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');