# 10 Academy Week 2 Challenge: Customer Experience Analytics for Fintech Apps

## Overview
This project is part of the 10 Academy Artificial Intelligence Mastery program (Week 2, June 4-10, 2025). The challenge involves analyzing user reviews from the Google Play Store for three Ethiopian banks' mobile apps (Commercial Bank of Ethiopia, Bank of Abyssinia, and Dashen Bank) to provide insights on customer satisfaction, retention, and app improvements.

## Repository Structure
- **data/**: Contains raw and processed datasets
- **scripts/**: Python scripts for data processing
- **README.md**: Project documentation

## Task 1: Data Collection and Preprocessing
- **Status**: Completed
- **Description**: Scraped 1,200+ reviews from the Google Play Store for three banks using `google-play-scraper`. Preprocessed data to remove duplicates, normalize dates.
- **Branch**: `task-1`
- **Files**: `scrape_reviews.py`, `preprocess.py`, `reviews_cleaned.csv`

## Task 2: Sentiment and Thematic Analysis
- **Status**: In Progress
- **Description**: Performed sentiment analysis using DistilBERT and thematic analysis using TF-IDF.
- **Branch**: `task-2`

## Task 3: Oracle Database Setup
Set up an Oracle XE database, created `Banks` and `Reviews` tables, and populated them with review data.

### Setup
1. Resolved `ORA-01920` by reusing/resetting the `bank_reviews` user.
2. Created tables using `create_tables.sql`.
3. Inserted data using `insert_reviews.py`.

## Task 4: Insights and Recommendations
- Derived drivers/pain points from 1,200 reviews.
- Created 7 visualizations.
- Report: task_4/final_report.pdf

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/Bisrath1/10Academy-Week2-Fintech-Analytics.git
   
