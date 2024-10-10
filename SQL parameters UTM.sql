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
	url_parameters
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
	url_parameters
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
	url_parameters
from
	google_ads_basic_daily gabd 
	)
select
	ad_date,
	url_parameters, 
	campaign_name,
	case when 
		substring(url_parameters, 'utm_campaign=([^&#$]+)') = 'nan' then NULL 
		else lower(substring(url_parameters, 'utm_campaign=([^&#$]+)')) end as utm_campaign, 
	sum(coalesce(spend, 0))     as total_spend,
	sum(coalesce(impressions, 0)) as total_impressions,
	sum(coalesce(clicks, 0))     as total_clicks,
	sum(coalesce(value, 0))       as total_values,
	case when sum(clicks) = 0 then 0 else round(1.0*sum(spend)/sum(clicks),2) end as CPC,
	case when sum(impressions) = 0 then 0 else round(1.0*sum(spend)/sum(impressions)*1000,2) end as CPM,
	case when sum(impressions) = 0 then 0 else round(1.0*sum(clicks)/sum(impressions)*100,2) end as CTR,
	case when sum(spend) = 0 then 0 else round(1.0*(sum(value)-sum(spend))/sum(spend)*100,2) end as ROMI
from
	all_ads_cte2
group by
	ad_date,
	url_parameters,
	campaign_name
	

	





