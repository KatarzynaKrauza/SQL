 # **ANALIZA WSKAŹNIKÓW MARKETINGOWYCH - SQL**

## 📌 Opis projektu ##

Projekt ten skupia się na analizie kluczowych wskaźników marketingowych (CPC, CPM, CTR, ROMI) dla kampanii reklamowych prowadzonych w Google Ads i Facebook Ads. Wykorzystałam SQL do przetwarzania danych, łączenia tabel oraz generowania raportów umożliwiających ocenę efektywności działań marketingowych


## 🎯 Cele projektu

✅ Połączenie danych z tabel facebook_ads_basic_daily i google_ads_basic_daily w jedną bazę

✅ Obliczenie kluczowych wskaźników marketingowych (CPC, CPM, CTR, ROMI)

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

📌 facebook_ads_basic_daily – dane o kampaniach z Facebook Ads

📌 google_ads_basic_daily – dane o kampaniach z Google Ads

📌 adset_id – tabela łącząca kampanie z obu platform


## 📈 Wyniki i wnioski

📌 Analiza umożliwia porównanie efektywności kampanii na różnych platformach

📌 Możemy identyfikować, które kampanie generują największy zwrot z inwestycji (ROMI)

📌 Pozwala na optymalizację budżetu reklamowego i lepsze targetowanie
