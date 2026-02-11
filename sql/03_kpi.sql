-- 03_kpi.sql
-- Création des indicateurs clés de performance (KPIs)
-- =====================================================

-- KPI 1 : Moyenne des pas et calories
SELECT 
    AVG(TotalSteps) AS moyenne_pas,
    AVG(Calories) AS moyenne_calories
FROM daily_activity;

-- KPI 2 : Répartition des niveaux d'activité
SELECT
    CASE 
        WHEN TotalSteps < 5000 THEN 'Sedentaire'
        WHEN TotalSteps BETWEEN 5000 AND 10000 THEN 'Modere'
        ELSE 'Actif'
    END AS niveau_activite,
    COUNT(*) AS nombre_jours
FROM daily_activity
GROUP BY niveau_activite;

-- KPI 3 : Nombre d'utilisateurs uniques
SELECT 
    COUNT(DISTINCT Id) AS nombre_utilisateurs
FROM daily_activity;
