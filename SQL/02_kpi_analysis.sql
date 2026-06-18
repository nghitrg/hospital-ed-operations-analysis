---1. Tổng số bệnh nhân 
SELECT COUNT(patient_id) AS total_patients 
FROM tdvnghi-00.dataset.hospital_operation_clean ;

--- 2. Trung bình thời gian chờ cấp cứu
SELECT AVG(patient_waittime) AS avg_waitime
FROM tdvnghi-00.dataset.hospital_operation_clean 
WHERE patient_waittime IS NOT NULL;

--- 3. Trung bình độ hài lòng của bệnh nhân
SELECT AVG(patient_satisfaction_score) avg_satisfaction_score
FROM tdvnghi-00.dataset.hospital_operation_clean 
WHERE patient_satisfaction_score IS NOT NULL;

--- 4. Tỷ lệ nhập viện
WITH admission_table
AS
(
SELECT 
  patient_admission_flag,
  IF(patient_admission_flag = 'Admission',1,0) AS admission
FROM tdvnghi-00.dataset.hospital_operation_clean 
)
SELECT ROUND(SUM(admission)*100.0/COUNT(*),2) AS admission_rate
FROM admission_table ;
