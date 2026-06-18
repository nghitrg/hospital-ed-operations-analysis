-- 9. Thời gian chờ theo khoa

SELECT
    department_referral,
    COUNT(*) AS total_patients,
    ROUND(AVG(patient_waittime), 2) AS avg_waittime
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE
    department_referral IS NOT NULL
    AND department_referral != 'None'
    AND patient_waittime IS NOT NULL
GROUP BY department_referral
ORDER BY avg_waittime DESC;

-- Nhận xét:
-- Thời gian chờ trung bình giữa các khoa tương đối đồng đều (~34–36 phút).
-- General Practice và Orthopedics có lượng bệnh nhân cao nhưng vẫn duy trì thời gian chờ tương đương các khoa khác.
-- Chưa ghi nhận mối quan hệ rõ ràng giữa số lượng bệnh nhân và thời gian chờ trung bình.

-- 10. Mối quan hệ giữa mức độ hài lòng và thời gian chờ

SELECT
    patient_satisfaction_score AS satisfaction_score,
    ROUND(AVG(patient_waittime), 2) AS avg_waittime,
    COUNT(*) AS total_patients
FROM `tdvnghi-00.dataset.hospital_operation_clean`
WHERE
    patient_satisfaction_score IS NOT NULL
    AND patient_waittime IS NOT NULL
GROUP BY satisfaction_score
ORDER BY satisfaction_score;

-- Nhận xét:
-- Chưa ghi nhận mối quan hệ rõ ràng giữa thời gian chờ và mức độ hài lòng của bệnh nhân.
