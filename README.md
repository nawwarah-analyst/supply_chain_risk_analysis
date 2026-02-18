# 🚀 Supply Chain Risk & Financial Exposure Analytics

### **Business Problem: The "Silent" Multi-Million Dollar Drain**

![Executive Summary](

Unpredictable supplier lead times are more than just logistics delays—they are **financial liabilities**. When lead times fluctuate (Volatility), the company is forced to hold excess safety stock or face stock-outs, both of which lead to direct capital loss.

**This project quantifies the "unquantifiable" by calculating exactly how much capital ($22.43M in this case) is currently at risk due to supplier unreliability.**

---

## 🛠️ The Tech Stack & Workflow

> **From Raw Data to Executive Action in 3 Steps:**

1. **Exploration & Modeling (Python):** * Sourced raw logistics data (Kaggle).
* Engineered a **Volatility Index** (Standard Deviation of Lead Times).
* Classified suppliers into **Risk Grades** (High/Medium/Low) using statistical thresholds.


2. **Data Engineering (SQL/BigQuery):**
* Refined raw tables into a **Star Schema** (Fact & Dimension tables).
* Developed optimized **Views** to pre-calculate financial exposure, ensuring lightning-fast dashboard performance.


3. **Strategic Visualization (Power BI):**
* Built a 2-page interactive cockpit using **DAX Measures** for real-time "Value at Risk" (VaR) tracking.
* Implemented **Conditional Logic** to flag "Critical Exposure" status across product categories.



---

## 📊 Key Performance Indicators (KPIs)

* **Total Portfolio Value ($25.29M):** The total financial weight of the procurement pipeline.
* **Value at Risk ($22.43M):** The dollar amount tied to "High Volatility" suppliers. **This represents the primary target for cost-saving interventions.**
* **Risk Exposure % (88.69%):** The proportion of the supply chain currently vulnerable to disruption.
* **Volatility Index:** A metric measuring the "unpredictability" of a supplier—the higher the index, the higher the risk of money loss.

---

## 💡 Strategic Insights: How the Company is Losing Money

* **High-Value Vulnerability:** 88% of total spend is concentrated with suppliers exhibiting high volatility. A single week of delay across this group could result in millions in lost sales or manufacturing downtime.
* **Electronics Crisis:** As seen in the **Financial Exposure by Category**, Electronics is the largest bubble, currently under **CRITICAL EXPOSURE**. This category requires immediate supplier diversification to prevent a total shutdown.
* **The Lead Time Paradox:** The **Supplier Reliability Matrix** shows several suppliers with lead times over 10 days AND high volatility. These are "Double-Loss" suppliers—they are slow *and* unpredictable.

---

## ⚖️ The Solution: Turning Risk into Recovery

By using this dashboard, the procurement team can:

1. **Negotiate or Terminate:** Identify the top "Red Flag" suppliers in the **Audit List** for contract renegotiation.
2. **Strategic Diversification:** Shift volume from "High Risk" suppliers to "Medium/Low" suppliers identified in the **Supplier Health Composition**.
3. **Proactive Buffer Management:** Adjust safety stock levels specifically for the **Pharma** and **Electronics** categories based on their current "Critical" status.

---

### **Repo Navigation**

* `/Python_Scripts`: Volatility modeling and data cleaning.
* `/SQL_Queries`: BigQuery views and Star Schema architecture.
* `/Dashboards`: Power BI `.pbix` files and screenshots.
* `/Documentation`: Step-by-step technical guide (Coming Soon).
