 # **ANALIZA WSKAŹNIKÓW MARKETINGOWYCH - SQL**

## 📌 Opis projektu ##

Projekt ten skupia się na analizie kluczowych wskaźników marketingowych (CPC, CPM, CTR, ROMI) dla kampanii reklamowych prowadzonych w Google Ads i Facebook Ads. Dane kampanii są łączone i przetwarzane w SQL przy użyciu JOIN, UNION oraz analizy znaczników UTM, które pozwalają na dokładne śledzenie efektywności działań reklamowych.

## 🎯 Cele projektu

✅ Połączenie danych z tabel: facebook_adset, facebook_campaign, facebook_ads_basic_daily i google_ads_basic_daily w jedną bazę

✅ Obliczenie kluczowych wskaźników marketingowych (CPC, CPM, CTR, ROMI)

✅ Analiza skuteczności kampanii według źródła ruchu i kanału

✅ Możliwość generowania raportów i wizualizacji wyników


## 🛠 Technologie

🔹 SQL (PostgreSQL/DBeaver)

🔹 Dashboard (Tableau, Looker Studio)


## 📊 Kluczowe wskaźniki

CPC (Cost Per Click) = Koszt kampanii / Liczba kliknięć

CPM (Cost Per Mille) = (Koszt kampanii / Liczba wyświetleń) * 1000

CTR (Click-Through Rate) = (Liczba kliknięć / Liczba wyświetleń) * 100%

ROMI (Return on Marketing Investment) = [(Przychody - Koszty) / Koszty] * 100%



## 🏛 Tabele źródłowe

📌 facebook_ads_basic_daily, facebook_adset, facebook_campaign – dane o kampaniach z Facebook Ads

📌 google_ads_basic_daily – dane o kampaniach z Google Ads

📌 campaign_name – tabela łącząca kampanie z obu platform


## 📈 Wnioski

📌 Analiza umożliwia porównanie efektywności kampanii na różnych platformach

📌 Możemy identyfikować, które kampanie generują największy zwrot z inwestycji (ROMI)

📌 Pozwala na optymalizację budżetu reklamowego i lepsze targetowanie
