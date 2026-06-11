# Hospital Emergency Department Operations Analysis

## Project Overview

This project analyzes Emergency Department (ED) operations using patient flow data to identify workload patterns, waiting time trends, and potential operational bottlenecks.

The objective is to support data-driven decisions that improve patient experience and operational efficiency.

## Business Problem

Hospitals often face several operational challenges:

- Long patient waiting times
- Low patient satisfaction
- Inefficient resource allocation
- Potential operational bottlenecks

## Business Objectives

The analysis aims to:

- Reduce patient waiting time
- Improve patient satisfaction
- Optimize patient flow
- Improve operational efficiency

## Dataset

Source:

- Kaggle Healthcare Analytics Patient Flow Dataset

Dataset Size:

- 9,216 patient visits
- Period: September 2023 – December 2024

Key Variables:

- Patient wait time
- Department referral
- Admission status
- Patient satisfaction score
- Demographic information

## Tools

- SQL (BigQuery)
- Python
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn
- Jupyter Notebook
- GitHub

## Analysis Process

### 1. Data Preparation

- Data cleaning
- Missing value assessment
- Data consistency validation
- Feature engineering

### 2. Statistical Overview

- Descriptive statistics
- Distribution analysis
- Data quality assessment

### 3. Operational Analysis

- Patient volume analysis
- Admission analysis
- Department workload analysis

### 4. Bottleneck Analysis

- Waiting time by department
- Workload vs waiting time
- Seasonal workload impact
- Long waiting case analysis

### 5. Business Recommendations

- Resource planning
- Department monitoring
- Operational improvement opportunities

## Key Findings

### Seasonal Workload Pattern

- Patient volume increases significantly from April to October.
- August records the highest workload.

### Department Workload

- General Practice and Orthopedics handle the highest number of patients.
- Workload distribution varies considerably across departments.

### Waiting Time Performance

- Average waiting time remains relatively stable despite seasonal workload increases.
- No clear system-wide congestion was identified.

### Long Waiting Cases

- Long waiting cases are relatively evenly distributed across departments.
- No department shows an exceptionally high long-wait rate.
