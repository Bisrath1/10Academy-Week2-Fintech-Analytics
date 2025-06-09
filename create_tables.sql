CREATE USER bank_reviews IDENTIFIED BY password123;
GRANT CONNECT, RESOURCE, CREATE TABLE TO bank_reviews;

CREATE TABLE bank_reviews.Banks (
    bank_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    bank_name VARCHAR2(100) NOT NULL,
    app_name VARCHAR2(100) NOT NULL
);

CREATE TABLE bank_reviews.Reviews (
    review_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    bank_id NUMBER NOT NULL,
    review_text VARCHAR2(4000),
    rating NUMBER(1) CHECK (rating BETWEEN 1 AND 5),
    review_date DATE NOT NULL,
    source VARCHAR2(50) DEFAULT 'Google Play',
    sentiment_label VARCHAR2(50),
    sentiment_score NUMBER,
    themes VARCHAR2(500),
    CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES bank_reviews.Banks(bank_id)
);
