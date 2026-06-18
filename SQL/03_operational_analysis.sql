-- 5. Số lượng bệnh nhân theo giờ
SELECT
  EXTRACT(HOUR FROM patient_admission_time) AS admission_hour,
  COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_hour
ORDER BY admission_hour;

-- 6. Số lượng bệnh nhân theo năm
SELECT
  EXTRACT(YEAR FROM patient_admission_date) AS admission_year,
  COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_year
ORDER BY admission_year;

-- 7. Số lượng bệnh nhân theo tháng
SELECT
  EXTRACT(MONTH FROM patient_admission_date) AS admission_month,
  COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
GROUP BY admission_month
ORDER BY admission_month;

--- 8. Số lượng bệnh nhân theo Khoa
SELECT 
  department_referral, 
  COUNT (*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE department_referral IS NOT NULL
GROUP BY department_referral
ORDER BY total_patients DESC ;

--- Đa số bệnh nhân không cần chuyển đến khoa chuyên môn.
--- General Practice tiếp nhận số lượng bệnh nhân nhiều nhất.
--- Orthopedics có lượng bệnh nhân cao hơn đáng kể so với các khoa chuyên môn khác.
