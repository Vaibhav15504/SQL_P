WITH demanded_skills AS (
    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        COUNT(*) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim
        ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title = 'Data Analyst'
    GROUP BY skills_dim.skill_id, skills_dim.skills
),
top_pay_skills AS (
    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        ROUND(AVG(salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim
        ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim
        ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE salary_year_avg IS NOT NULL
        AND job_title = 'Data Analyst'
    GROUP BY skills_dim.skill_id, skills_dim.skills
)

SELECT
    demanded_skills.skill_id,
    demanded_skills.skills,
    demand_count,
    avg_salary
FROM demanded_skills
INNER JOIN top_pay_skills
    ON demanded_skills.skill_id = top_pay_skills.skill_id
    WHERE demand_count > 10
ORDER BY demand_count DESC, avg_salary DESC;
