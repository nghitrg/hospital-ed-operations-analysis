# Hospital Emergency Department Operations Analysis

## Project Overview

This project analyzes Emergency Department (ED) operations using patient flow data to explore patient volume, waiting time, department workload, admission patterns, and patient satisfaction.

Using SQL and Python, the project identifies operational trends and provides business insights to support data-driven decision making for healthcare operations.

---

## Business Problem

Emergency Departments often experience operational challenges such as:

- Long patient waiting times
- Low patient satisfaction
- Inefficient resource allocation
- Difficulty identifying operational bottlenecks

---

## Business Objectives

This project aims to:

- Analyze Emergency Department operations
- Identify workload and waiting time patterns
- Evaluate department performance
- Support operational improvement through data-driven insights

---

## Dataset

### Source

Healthcare Analytics Patient Flow Dataset (Kaggle)

### Dataset Information

- 9,216 patient visits
- Period: September 2023 – December 2024

### Key Variables

- Patient admission date and time
- Patient wait time
- Department referral
- Admission status
- Patient satisfaction score
- Patient demographics

---

## Tools

- SQL (BigQuery)
- Python
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn
- Jupyter Notebook
- GitHub

---

## Analysis Process

### 1. Data Preparation

- Data cleaning
- Data type standardization
- Missing value assessment
- Feature engineering

### 2. Exploratory Data Analysis

- Descriptive statistics
- Distribution analysis
- Data quality assessment

### 3. Operational Analysis

- Patient volume analysis
- Admission pattern analysis
- Department workload analysis
- Waiting time analysis

### 4. Waiting Time Analysis

- Waiting time by department
- Long waiting case analysis
- Workload vs. waiting time
- Seasonal workload analysis

### 5. Business Recommendations

- Operational improvement opportunities
- Resource planning recommendations

### 5. Business Recommendations

- Operational improvement opportunities
- Resource planning recommendations

---

## Key Findings

### Patient Volume

- Patient volume increases from April to October, with the highest workload observed in August.
- Emergency Department demand remains relatively stable throughout the day without significant congestion periods.

### Department Performance

- General Practice and Orthopedics receive the largest number of patient referrals.
- Neurology shows relatively higher average waiting times despite lower patient volume.

### Waiting Time

- Average waiting time remains relatively stable across departments.
- No strong relationship is observed between department workload and average waiting time.

### Patient Satisfaction

- Waiting time alone does not fully explain patient satisfaction.
- Additional operational factors are likely to influence patient experience.

---

## Recommendations

### Resource Planning

- Allocate staffing based on seasonal patient demand.
- Increase operational capacity during peak months.

### Department Monitoring

- Monitor high-volume departments regularly.
- Track waiting time trends to identify emerging bottlenecks.

### Process Improvement

- Review workflows in departments with relatively longer waiting times.
- Investigate operational factors beyond patient volume.

### Future Improvements

The current dataset provides limited operational variables. Future analysis could be enhanced by incorporating:

- Patient acuity level
- Staffing level
- Queue length
- Treatment duration

These variables would enable a deeper investigation of waiting time drivers and operational bottlenecks.
---

## Repository Structure

```text
hospital-ed-operations-analysis/
│
├── Dataset/
│   ├── README.md
│   └── hospital_operation_clean.csv
│
├── SQL/
│   ├── README.md
│   ├── 01_data_preparation.sql
│   ├── 02_kpi_analysis.sql
│   ├── 03_operational_analysis.sql
│   └── 04_department_analysis.sql
│
├── Python/
│   ├── README.md
│   └── hospital_emergency_department_analysis.ipynb
│
└── README.md
```
