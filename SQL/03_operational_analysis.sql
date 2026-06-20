-- Operational Analysis

-- 5. Patient volume by hour
SELECT
    EXTRACT(HOUR FROM patient_admission_time) AS admission_hour,
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_hour
ORDER BY admission_hour;

-- 6. Patient volume by year
SELECT
    EXTRACT(YEAR FROM patient_admission_date) AS admission_year,
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_year
ORDER BY admission_year;

-- 7. Patient volume by month
SELECT
    EXTRACT(MONTH FROM patient_admission_date) AS admission_month,
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_month
ORDER BY admission_month;

-- 8. Patient volume by department
SELECT 
    department_referral, 
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE department_referral IS NOT NULL
GROUP BY department_referral
ORDER BY total_patients DESC;

-- Most patients did not require referral to a specialist department.
-- General Practice handled the highest patient volume.
-- Orthopedics had a significantly higher patient volume than other specialist departments.
