## Query 1: Data Aggregation

This query aggregates data according to various criteria and metrics that represent the results of marketing campaigns

```sql
select distinct 
	ad_date,
	campaign_id,
	sum(spend) as total_spend,
	sum(impressions) as total_impressions,
	sum(clicks) as total_clicks,
	sum(value) as total_value,
	round(1.0*sum(spend)/sum(clicks),2) as CPC,--cost per click, koszt jednego klikcnięcia w reklamę
	round(1.0*sum(spend)/sum(impressions)*1000,2) as CPM,--cost per millie, koszt wyświetlenia 1000 reklam
	round(1.0*sum(clicks)/sum(impressions)*100,2) as CTR,--click-trough rate, stosunek kliknięć do wyświetlen reklamy, %
	round(1.0*(sum(value)-sum(spend))/sum(spend)*100,2) as ROMI-- zwrot z inwestycji w reklamę, wyrażony w %
from
	facebook_ads_basic_daily fabd 
where true 
	and impressions>0
	and clicks>0
group by
	ad_date,
	campaign_id;
