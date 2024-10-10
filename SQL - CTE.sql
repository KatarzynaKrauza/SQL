with all_ads_cte as
(
select 
	ad_date,
	'Facebook Ads' as media_source,
 	spend,
	impressions,
	reach,
	clicks,
	leads,
	value,
	campaign_id as campaign
from 
	facebook_ads_basic_daily fabd 
union all
select
	ad_date,
	'Google Ads' as media_source,
	spend,
	impressions,
	reach,
	clicks,
	leads,
	value,
	campaign_name as campaign
from
	google_ads_basic_daily gabd
	)
select
	ad_date,
	media_source,
	campaign,
	sum(spend)       as total_spend,
	sum(impressions) as total_impressions,
	sum(clicks)      as total_clicks,
	sum(value)       as total_values 
from
	all_ads_cte
group by
	ad_date,
	media_source,
	campaign


	
	
