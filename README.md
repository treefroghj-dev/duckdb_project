##queries:##

3.
```bash
from zoomcamp_dbt.prod.monthly_revenue_per_locations
select
	count(1)
```

4. 
```bash
from zoomcamp_dbt.prod.monthly_revenue_per_locations
select
	pickup_zone,
  revenue_month,
  revenue_monthly_total_amount,
  service_type
where service_type == 'Green' and revenue_month >='2020-01-01' and revenue_month < '2021-01-01'
order by revenue_monthly_total_amount desc
limit 10
```

5.
```bash
from zoomcamp_dbt.prod.monthly_revenue_per_locations
select
	service_type,
  sum(total_monthly_trips) as total_trips
where service_type == 'Green' and revenue_month >='2019-10-01' and revenue_month < '2019-11-01'
group by 1
```

6.
```bash
from zoomcamp_dbt.prod.stg_fhv_tripdata
select
	count(*)
```
