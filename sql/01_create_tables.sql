-- Création de la base de données
CREATE DATABASE IF NOT EXISTS bellabeat;

-- Utilisation de la base
USE bellabeat;

-- Création de la table daily_activity
CREATE TABLE IF NOT EXISTS daily_activity (
    Id BIGINT,
    ActivityDay DATE,
    TotalSteps INT,
    TotalDistance FLOAT,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
);
