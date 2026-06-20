-- Key Performance Indicators (KPIs)

-- 1. Total number of patients
SELECT COUNT(patient_id) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`;

-- 2. Average waiting time
SELECT AVG(patient_waittime) AS avg_wait_time
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE patient_waittime IS NOT NULL;

-- 3. Average patient satisfaction score
SELECT AVG(patient_satisfaction_score) AS avg_satisfaction_score
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE patient_satisfaction_score IS NOT NULL;

-- 4. Admission rate
WITH admission_table AS (
    SELECT
        patient_admission_flag,
        IF(patient_admission_flag = 'Admission', 1, 0) AS admission
    FROM `tdvnghi-00.dataset.hospital_operation_clean`
)

SELECT
    ROUND(SUM(admission) * 100.0 / COUNT(*), 2) AS admission_rate
FROM admission_table;
