/* PROJECT: Azure Crypto Data Observability
DESCRIPTION: SQL logic for automated data quality monitoring.
OBJECT: View [vw_data_health_report]
*/

-- Check if the view already exists and drop it to allow recreation
IF OBJECT_ID('vw_data_health_report', 'V') IS NOT NULL
    DROP VIEW vw_data_health_report;
GO

CREATE VIEW vw_data_health_report AS
SELECT 
    'Chýbajúce ceny (NULL/Zero)' AS Kontrola,
    COUNT(*) AS Pocet_Chyb,
    'Kritická' AS Závažnosť
FROM CryptoPrices
WHERE cena_usd IS NULL OR cena_usd <= 0

UNION ALL

SELECT 
    'Zastarané dáta (> 24h)' AS Kontrola,
    COUNT(*) AS Pocet_Chyb,
    'Vysoká' AS Závažnosť
FROM CryptoPrices
WHERE cas_aktualizacie_api < DATEADD(HOUR, -24, GETDATE())

UNION ALL

SELECT 
    'Duplicitné záznamy (rovnaký čas)' AS Kontrola,
    COUNT(*) - COUNT(DISTINCT cas_aktualizacie_api) AS Pocet_Chyb,
    'Stredná' AS Závažnosť
FROM CryptoPrices;
GO
