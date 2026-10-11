# To Create Database
CREATE DATABASE asthma_data;

# To select the database
USE asthma_data;

# Create the Table
CREATE TABLE asthma_ed_visits (
    Year INT,
    Geographic_Region VARCHAR(50),
    Age_Group VARCHAR(50),
    Asthma_ED_Visits INT
);

# Insert Data into the Table
INSERT INTO asthma_ed_visits (Year, Geographic_Region, Age_Group, Asthma_ED_Visits)
VALUES
(2018, 'Region 1', '0-10', 50),
(2018, 'Region 1', '11-20', 55),
(2018, 'Region 1', '21-30', 60),
(2018, 'Region 1', '31-40', 40),
(2019, 'Region 1', '0-10', 45),
(2019, 'Region 1', '11-20', 50),
(2019, 'Region 1', '21-30', 55),
(2019, 'Region 1', '31-40', 35),
(2020, 'Region 1', '0-10', 48),
(2020, 'Region 1', '11-20', 53),
(2020, 'Region 1', '21-30', 58),
(2020, 'Region 1', '31-40', 38),
(2021, 'Region 2', '0-10', 30),
(2021, 'Region 2', '11-20', 32),
(2021, 'Region 2', '21-30', 34),
(2021, 'Region 2', '31-40', 28),
(2021, 'Region 3', '0-10', 40),
(2021, 'Region 3', '11-20', 42),
(2021, 'Region 3', '21-30', 45),
(2021, 'Region 3', '31-40', 31);

# Verify Data Insertion
SELECT * FROM asthma_ed_visits;

# Query
SELECT Year, SUM(Asthma_ED_Visits) AS Total_ED_Visits
FROM asthma_ed_visits
GROUP BY Year;

# To Show tables
SHOW TABLES;
