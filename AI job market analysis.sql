USE aijobdata;  -- Select the correct database

-- Show all data
SELECT * FROM ai_job_market_insights;

-- Count the number of jobs in each industry
SELECT Industry, COUNT(*) AS job_count
FROM ai_job_market_insights
GROUP BY Industry
ORDER BY job_count DESC;


-- Calculate the average salary per industry

SELECT Industry, AVG(Salary_USD) AS avg_salary
FROM ai_job_market_insights
GROUP BY Industry
ORDER BY avg_salary DESC;


-- find the highest salary per job title

SELECT Job_Title, Industry, Location, MAX(Salary_USD) AS Max_Salary
FROM ai_job_market_insights
GROUP BY Job_Title, Industry, Location
ORDER BY Industry, Location, Max_Salary DESC;


-- Count jobs based on remote work availability and job title

SELECT Remote_Friendly, Job_Title, COUNT(*) AS job_count
FROM ai_job_market_insights
GROUP BY Remote_Friendly, Job_Title;


-- Availability remote work and the job title 

SELECT Industry, Automation_Risk, COUNT(*) AS job_count
FROM ai_job_market_insights
GROUP BY Industry, Automation_Risk
ORDER BY Industry, Automation_Risk DESC;


-- required skills in job market

SELECT DISTINCT Required_Skills
FROM ai_job_market_insights;


-- Count jobs based on automation risk per industry

SELECT Industry, Automation_Risk, COUNT(*) AS job_count
FROM ai_job_market_insights
GROUP BY Industry, Automation_Risk
ORDER BY Industry, Automation_Risk DESC;


-- Analyze job growth projection per industry

SELECT Industry, Job_Growth_Projection, COUNT(*) AS job_count
FROM ai_job_market_insights
GROUP BY Industry, Job_Growth_Projection
ORDER BY Industry, job_count DESC;

