/* PROJECT: Azure Automated Crypto Portfolio
   DESCRIPTION: Database schema for storing real-time cryptocurrency price data.
   TABLE: [dbo].[CryptoPrices]
*/

-- Check if the table exists, and create it if it doesn't
IF OBJECT_ID('[dbo].[CryptoPrices]', 'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[CryptoPrices] (
        [id] VARCHAR(50) NOT NULL,              -- Unique identifier (e.g., 'bitcoin')
        [symbol] VARCHAR(10) NOT NULL,          -- Ticker symbol (e.g., 'btc')
        [name] VARCHAR(100) NOT NULL,            -- Full name (e.g., 'Bitcoin')
        [cena_usd] DECIMAL(18, 8) NULL,         -- Price in USD with high precision
        [cas_aktualizacie_api] DATETIME NULL,   -- Timestamp from the external API
        [cas_zapisu_db] DATETIME DEFAULT GETDATE() -- Timestamp when recorded in Azure SQL
    );

    -- Optional: Create an index on symbol for faster Power BI filtering
    CREATE INDEX IX_CryptoPrices_Symbol ON [dbo].[CryptoPrices] ([symbol]);
END
GO
