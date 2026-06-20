-- Data Preparation

-- Preview the raw dataset
SELECT COUNT(*) AS total_row
FROM `tdvnghi-00.dataset.hospital_operation`;

SELECT *
FROM `tdvnghi-00.dataset.hospital_operation`
LIMIT 10;

-- Create the cleaned table
CREATE OR REPLACE TABLE `tdvnghi-00.dataset.hospital_operation_clean`
AS
SELECT
  DATE(`Patient Admission Date`) AS patient_admission_date,
  PARSE_TIME('%I:%M:%S %p', `Patient Admission Time`) AS patient_admission_time,
  `Patient Id` AS patient_id,
  `Merged` AS merged,
  `Patient Gender` AS patient_gender,
  `Patient Age` AS patient_age,
  `Patient Race` AS patient_race,
  `Department Referral` AS department_referral,
  `Patient Admission Flag` AS patient_admission_flag,
  `Patient Satisfaction Score` AS patient_satisfaction_score,
  `Patient Waittime` AS patient_waittime
FROM `tdvnghi-00.dataset.hospital_operation`;

-- Preview the cleaned dataset
SELECT *
FROM `tdvnghi-00.dataset.hospital_operation_clean`
LIMIT 10;
