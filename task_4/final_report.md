---
title: Customer Experience Analytics for Ethiopian Fintech Apps
author: Bisrat Haile
date: June 10, 2025
geometry: margin=1in
---

# Customer Experience Analytics for Ethiopian Fintech Apps

## Introduction (0.5 page)
Omega Consultancy is tasked with enhancing the mobile banking apps of Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank to improve customer satisfaction and retention. This report analyzes 1,200 Google Play Store reviews (400 per bank) to identify satisfaction drivers, pain points, and actionable improvements. By addressing user feedback, we aim to support banks in retaining users (Scenario 1), enhancing features (Scenario 2), and managing complaints (Scenario 3). The analysis leverages sentiment scoring, thematic clustering, and visualizations to provide data-driven recommendations.

## Methodology (0.5 page)
- **Data Collection**: Scraped 400 reviews per bank from the Google Play Store using the `google-play-scraper` library, capturing review text, ratings (1–5 stars), dates, and app names.
- **Tools**: 
  - Sentiment analysis: DistilBERT (`distilbert-base-uncased-finetuned-sst-2-english`) for positive/negative/neutral labels and scores.
  - Thematic analysis: spaCy and TF-IDF for keyword extraction and theme clustering.
  - Storage: Oracle Database (bank_reviews) to store cleaned data.
  - Visualizations: Matplotlib and Seaborn for plots.
- **Analysis**: 
  - Computed sentiment distributions and scores.
  - Clustered reviews into themes (e.g., UI, crashes).
  - Generated visualizations to highlight trends and comparisons.
- **Ethics**: Addressed biases like negative skew by noting mitigation strategies (e.g., in-app surveys).

## Findings (1.5 pages)
### Drivers and Pain Points
Based on 1,200 reviews, we identified key drivers (positive aspects) and pain points (issues) for each bank:

- **Commercial Bank of Ethiopia (CBE)** (4.4 stars, 60% positive):
  - **Drivers**:
    - *Fast UI*: Users praise intuitive navigation (e.g., “App is easy to use, menus are clear”).
    - *Reliability*: Stable performance for most users.
  - **Pain Points**:
    - *Slow Transfers*: Delays during fund transfers (e.g., “Takes too long to send money”).
    - *Bugs*: Glitches in transaction history or balance updates.
- **Bank of Abyssinia (BOA)** (2.8 stars, 50% negative):
  - **Drivers**:
    - *Easy Transfers*: Straightforward transfer process when functional.
    - *Feature Availability*: Positive feedback on bill payments.
  - **Pain Points**:
    - *Crashes*: Frequent app crashes during login or transactions (e.g., “App crashes every time I try to log in”).
    - *Login Errors*: Issues with fingerprint login and authentication.
- **Dashen Bank** (4.0 stars, 50% positive):
  - **Drivers**:
    - *Intuitive UI*: Clean design and easy navigation.
    - *Transaction Speed*: Faster transfers compared to BOA.
  - **Pain Points**:
    - *Login Issues*: Errors with OTP or password resets (e.g., “OTP doesn’t arrive”).
    - *Delays*: Slowdowns during peak usage times.

### Bank Comparison
- **Ratings and Sentiment**: CBE leads (4.4 stars, 60% positive), followed by Dashen (4.0 stars, 50% positive). BOA lags (2.8 stars, 50% negative) due to crashes and login issues.
- **Common Issue**: Slow transfers affect all banks (Scenario 1), but BOA’s crashes are more severe.
- **Strengths**: CBE and Dashen excel in UI; BOA has potential in transfer ease but is hindered by instability.
- **Visualizations**:
  - Sentiment distribution by bank:
    ![Sentiment Distribution](sentiment_bar.png)
  - CBE rating distribution:
    ![CBE Ratings](cbe_rating_pie.png)
  - BOA rating distribution:
    ![BOA Ratings](boa_rating_pie.png)
  - Dashen rating distribution:
    ![Dashen Ratings](dashen_rating_pie.png)
  - Top themes across banks:
    ![Themes](theme_bar.png)
  - Sentiment trends (Jan–Jun 2025):
    ![Sentiment Trends](sentiment_trend.png)
  - Keyword cloud:
    ![Keywords](keyword_cloud.png)

## Recommendations (1 page)
To address pain points and enhance user experience, we propose:
- **CBE**:
  - *Optimize Transfers*: Upgrade server capacity to reduce transfer delays, especially during peak hours (Scenario 1).
  - *Fix Bugs*: Implement robust QA to address glitches in transaction history.
  - *Add Budgeting Tools*: Introduce personal finance features to boost retention (Scenario 2).
- **BOA**:
  - *Fix Crashes*: Conduct stress tests and patch stability issues in login and transaction modules.
  - *Improve Login*: Enhance authentication with reliable fingerprint login and simpler OTP delivery (Scenario 3).
  - *Integrate AI Chatbot*: Add a chatbot to resolve login complaints faster (Scenario 3).
- **Dashen**:
  - *Streamline Login*: Simplify OTP delivery and password reset processes (Scenario 3).
  - *Optimize Performance*: Add real-time monitoring to prevent peak-time delays (Scenario 1).
  - *Add Fingerprint Login*: Introduce biometric features to stay competitive (Scenario 2).
- **Ethical Considerations**: Reviews may have negative skew (users report issues more). Mitigate by cross-referencing with in-app surveys and using multilingual NLP for Amharic reviews.

## Conclusion (0.5 page)
CBE excels in UI and reliability, making it the top performer, but slow transfers need attention. BOA requires urgent fixes for crashes and login errors to regain user trust. Dashen is competitive with strong UI and transfer speed but must resolve login issues. Implementing the recommended improvements—server upgrades, bug fixes, feature additions, and AI support—will enhance customer satisfaction and retention. Next steps include monitoring post-improvement reviews and integrating AI-driven support to address complaints efficiently.
