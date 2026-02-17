select 
    dispatching_base_num as dispatching_base_num,
    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(dropoff_datetime as timestamp) as dropoff_datetime,
    cast(PULocationID as int) as pickup_location_id,
    cast(DOLocationID as int) as dropoff_location_id,
    SR_Flag as sr_flag,
    Affiliated_base_number as affiliated_base_number
from {{ source('raw_data', 'fhv_tripdata') }}
where dispatching_base_num IS NOT NULL