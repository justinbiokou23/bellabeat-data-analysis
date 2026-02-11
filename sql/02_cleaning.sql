-- 02_cleaning.sql
-- Vérification et nettoyage des données
-- =====================================================

-- Vérifier la période couverte par les données
SELECT 
    MIN(ActivityDay) AS date_debut,
    MAX(ActivityDay) AS date_fin
FROM daily_activity;

-- Vérifier les doublons (même utilisateur, même jour)
SELECT 
    Id,
    ActivityDay,
    COUNT(*) AS nb_occurrences
FROM daily_activity
GROUP BY Id, ActivityDay
HAVING COUNT(*) > 1;

-- Vérifier les valeurs manquantes
SELECT *
FROM daily_activity
WHERE TotalSteps IS NULL
   OR Calories IS NULL;

