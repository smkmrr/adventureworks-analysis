# AdventureWorks Sales Analysis

**Author:** Ali Akyel  
**Date:** January 2026

## 📌 Overview
This project analyzes the AdventureWorks database to identify sales trends, top-performing products, and customer behavior. It uses **SQL** for data extraction and **Python (Pandas/Seaborn)** for visualization.

## ⚙️ Setup
1. **Install Requirements:**
   ```bash
   pip install -r requirements.txt
Database: Ensure you have the AdventureWorks2025 database installed on your SQL Server.

🔗Connection: 

server = 'localhost'
database = 'AdventureWorks2022'
... connection string & engine

connection_string = (
    f"mssql+pyodbc://@{server}/{database}"
    f"?driver={driver}&trusted_connection=yes&Encrypt=yes&TrustServerCertificate=yes"

🚀 Usage
Open the .ipynb notebook file in this repository and click "Run All" to generate the reports.
