-- Department Analysis

-- 9. Average waiting time by department

SELECT
    department_referral,
    COUNT(*) AS total_patients,
    ROUND(AVG(patient_waittime), 2) AS avg_wait_time
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE
    department_referral IS NOT NULL
    AND department_referral != 'None'
    AND patient_waittime IS NOT NULL
GROUP BY department_referral
ORDER BY avg_wait_time DESC;

-- Findings:
-- Average waiting times were relatively consistent across departments (~34–36 minutes).
-- General Practice and Orthopedics handled a high patient volume while maintaining waiting times comparable to other departments.
-- No clear relationship was observed between patient volume and average waiting time.

-- 10. The relationship between patient satisfaction and waiting time

SELECT
    patient_satisfaction_score AS satisfaction_score,
    ROUND(AVG(patient_waittime), 2) AS avg_wait_time,
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE
    patient_satisfaction_score IS NOT NULL
    AND patient_waittime IS NOT NULL
GROUP BY satisfaction_score
ORDER BY satisfaction_score;

-- Findings:
-- No clear relationship was observed between patient satisfaction scores and average waiting time.
