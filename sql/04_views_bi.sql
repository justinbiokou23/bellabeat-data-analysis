-- 04_views_bi.sql
-- Création de vues propres pour la BI
-- =====================================================

-- Vue 1 : Données nettoyées
CREATE OR REPLACE VIEW v_activity_clean AS
SELECT
    Id,
    ActivityDay,
    TotalSteps,
    Calories,
    SedentaryMinutes,
    VeryActiveMinutes
FROM daily_activity
WHERE TotalSteps IS NOT NULL
  AND Calories IS NOT NULL;

-- Vue 2 : KPI journalier
CREATE OR REPLACE VIEW v_kpi_daily AS
SELECT
    ActivityDay,
    AVG(TotalSteps) AS moyenne_pas,
    AVG(Calories) AS moyenne_calories
FROM daily_activity
GROUP BY ActivityDay;
