-- Dim_Supplier

CREATE OR REPLACE VIEW `portfolio-project-487605.supply_chain.Dim_Suppliers` AS
SELECT 
    Supplier_ID,
    -- We take the MAX to ensure only 1 row per ID
    MAX(Volatility_Index) as Volatility_Index, 
    MAX(Risk_Grade) as Risk_Grade
FROM `portfolio-project-487605.supply_chain.supply chain table`
GROUP BY Supplier_ID;


-- Fact_Order

CREATE OR REPLACE VIEW `portfolio-project-487605.supply_chain.Fact_Orders` AS
SELECT 
    Order_ID, -- Ensure your raw table has this unique ID
    Supplier_ID,
    Product_Category, -- Using Category as we discussed
    Shipping_mode,    -- Moved here to keep Dim_Suppliers unique
    Order_Date,
    Order_Value_USD,
    Actual_Lead_Time
FROM `portfolio-project-487605.supply_chain.supply chain table`;

-- Executive_risk_view

CREATE OR REPLACE VIEW `portfolio-project-487605.supply_chain.vw_executive_risk_summary` AS
SELECT 
    f.Category,
    s.Risk_Grade,
    -- Core Metrics
    COUNT(f.Order_ID) as Total_Orders,
    SUM(f.Order_Value_USD) as Total_Transaction_Value,
    
    -- Calculated Risk Exposure
    -- This isolates the dollar amount specifically in the "High Risk" bucket
    SUM(CASE WHEN s.Risk_Grade = 'High' THEN f.Order_Value_USD ELSE 0 END) as Value_at_Risk,
    
    -- Average Delay Impact
    AVG(f.Actual_Lead_Time) as Avg_Actual_Lead_Time,
    
    -- Efficiency Metric: Value per Order
    SAFE_DIVIDE(SUM(f.Order_Value_USD), COUNT(f.Order_ID)) as Avg_Order_Value

FROM `portfolio-project-487605.supply_chain.Fact_Orders` f
LEFT JOIN `portfolio-project-487605.supply_chain.Dim_Suppliers` s 
    ON f.Supplier_ID = s.Supplier_ID
GROUP BY 1, 2;
