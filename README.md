 # **ANALIZA WSKAŹNIKÓW MARKETINGOWYCH - SQL**

## 📝 Project description 

This project focuses on analyzing key marketing metrics (CPC, CPM, CTR, ROMI) for advertising campaigns run on Google Ads and Facebook Ads. Campaign data is merged and processed in SQL using JOIN, UNION, and UTM parameter analysis, enabling precise tracking of advertising performance.


## 🎯 Goals

✅ Merging data from the tables: facebook_adset, facebook_campaign, facebook_ads_basic_daily, and google_ads_basic_daily into a single database.

✅ Calculating key marketing metrics (CPC, CPM, CTR, ROMI).

✅ Analyzing campaign performance by traffic source and channel.

✅ Generating reports and visualizing results.

## 🛠 Technologies

🔹 SQL (PostgreSQL/DBeaver)

🔹 Dashboard (Tableau, Looker Studio)


## 📊 Key metrics

📌 CPC (Cost Per Click) = Campaign cost / Number of clicks

📌 CPM (Cost Per Mille) = (Campaign cost / Number of impressions) * 1000

📌 CTR (Click-Through Rate) = (Number of clicks / Number of impressions) * 100%

📌 ROMI (Return on Marketing Investment) = [(Revenue - Costs) / Costs] * 100%


## 🏛 Source tables

📌 facebook_ads_basic_daily, facebook_adset, facebook_campaign – Facebook Ads campaign data

📌 google_ads_basic_daily – Google Ads campaign data

📌 campaign_name – a table combining campaigns from both platforms

## 💡 Conclusions

✅ The analysis allows for comparing campaign performance across different platforms.

✅ We can identify which campaigns generate the highest return on marketing investment (ROMI).

✅ It enables budget optimization and more effective targeting.
