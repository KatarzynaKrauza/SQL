with all_data_facebook_cte as
(
select 
	ad_date,
	fabd.adset_id,
	a.adset_id,
	adset_name,
	fabd.campaign_id,
	fc.campaign_id,
	campaign_name,
 	spend,
	impressions,
	reach,
	clicks,
	leads,
	value,
	'Facebook ads' as media_source
from 
	facebook_ads_basic_daily fabd 
left join
	facebook_adset a on a.adset_id = fabd.adset_id
left join 	
	facebook_campaign fc on fc.campaign_id = fabd.campaign_id	
	),	

all_ads_cte2 as
(
select
	ad_date,
	adset_name,
	campaign_name,
	spend,
	impressions,
	reach,
	clicks,
	leads,
	value,
	'Facebook ads' as media_source
from
	all_data_facebook_cte
union all
select
	ad_date,
	adset_name,
	campaign_name,
	spend,
	impressions,
	reach,
	clicks,
	leads,
	value,
	'Google ads' as media_source
from
	google_ads_basic_daily gabd 
	)
select
	campaign_name,
	adset_name,
	sum(spend)       as total_spend,
	sum(value)       as total_values,
	round(1.0 *(sum(value)-sum(spend))/ sum(spend)* 100,2) as ROMI
from
	all_ads_cte2
group by
	campaign_name,
	adset_name
having 
	sum(spend)>500000
order by 
	romi desc 
limit 
	1



