#Azure Automated Crypto Portfolio & Data Observability 🚀

Automated cryptocurrency price monitoring through an end-to-end data engineering project utilizing Power BI, Azure Cloud Services, and the implementation of a customized Data Quality and Observability Framework.

🚧 Technology & Architecture Framework * Data Source: CoinGecko API (Python / ADF) * Automated ETL Service Orchestration: Azure Data Factory (ADF) * Relational Data Storage: Azure SQL Database (Cloud) * Market Data Visualization: Power BI (for market data and portfolio analytics) * Data Integrity Monitoring: Custom SQL-based Observability Layer

In addition to visualizing data, this Project includes developing a proactive Data Health Monitoring System to effectively provide "One Version of Truth." ### Main Features: * Automated Validation: Each SQL View has been built to automatically validate data through monitoring null values, pricing discrepancies or stale data. Use of a Power BI System Health Dashboard to visualize data integrity metrics through real time Monitoring and then resolving an Internal Service Error caused by Resource Contention with a Loadbalancing Optimized Cloud Refresh.

Data Health Metrics Being Monitored: - Freshness - Data updates occur every 24 hours. - Completeness - Critical price columns do not contain missing or zero values. - Uniqueness - Duplicate records do not contribute to data inflation.

---

## 📊 Dashboard Previews

### 1. Crypto Market Analysis

![Portfolio Dashboard](https://github.com/peteo0098/Azure-Crypto-Data-Observability/raw/main/Krypto%20Power%20Bi.png)

### 2. Data Health & System Monitoring

![System Health](https://github.com/peteo0098/Azure-Crypto-Data-Observability/raw/main/images/Data%20observability.png)


---

## 📂 Project Structure
* `/sql/` - Database schema and Data Quality Views.
* `/powerbi/` - Power BI Desktop file (.pbix).
* `/images/` - Dashboard screenshots and documentation.
