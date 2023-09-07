with strava_data as (
  select 
    name, 
    start_date,
    distance,
    total_elevation_gain,
    average_speed,
    max_speed,
    moving_time,
    gear_id,
    map
  from FIVETRAN_DATABASE.S3.strava_data
),

final as (
  select * from strava_data
  where type='Ride'
)

select * from final