CREATE SCHEMA covid_reporting
GO

CREATE TABLE covid_reporting.cases_and_deaths
(
    country                 VARCHAR(100),
    country_code_2_digit    VARCHAR(2),
    country_code_3_digit    VARCHAR(3),
    population              BIGINT,
    cases_count             BIGINT,
    deaths_count            BIGINT,
    reported_date           DATE,
    source                  VARCHAR(500)
)
GO

DROP TABLE covid_reporting.hospital_admissions_daily

CREATE TABLE covid_reporting.hospital_admissions_daily
(
    country                 VARCHAR(MAX),
    indicator               VARCHAR(MAX),
    [date]                  DATE,
    year_week               VARCHAR(MAX),
    [value]                 VARCHAR(MAX),
    source                  VARCHAR(MAX),
    [url]                   VARCHAR(MAX)
)
GO

CREATE TABLE covid_reporting.testing
(
    country                 VARCHAR(100),
    country_code_2_digit    VARCHAR(2),
    country_code_3_digit    VARCHAR(3),
    year_week               VARCHAR(8),
    week_start_date         DATE,
    week_end_date           DATE,
    new_cases               BIGINT,
    tests_done              BIGINT,
    population              BIGINT,
    testing_data_source      VARCHAR(500)
)
GO