## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem:  
The raw dataset contained inconsistent date formats such as DD/MM/YYYY and MM-DD-YYYY. This inconsistency makes it difficult to perform reliable time-based analysis.

Resolution:  
All date values were converted into a standardized ISO format (YYYY-MM-DD) before loading into the data warehouse. This ensures consistent querying, proper sorting, and compatibility with SQL date functions.

---

### Decision 2 — Fixing Category Inconsistencies
Problem:  
The category field in the raw data had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS". These inconsistencies could lead to incorrect aggregations in analytical queries.

Resolution:  
All category values were standardized into consistent title case values such as "Electronics", "Clothing", and "Groceries". This ensures accurate grouping when performing revenue analysis by category.

---

### Decision 3 — Handling Missing Store Information
Problem:  
Some rows contained NULL values in store-related attributes, which could break foreign key relationships in the warehouse schema.

Resolution:  
Missing store information was cleaned by filling the values using known store mappings or assigning a default placeholder value where appropriate. This ensured referential integrity between fact and dimension tables.
