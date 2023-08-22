{{ config(materialized='table') }}

with strava_data as (
  select 
    name 
    start_date
    distance
    total_elevation_gain
    average_speed
    max_speed
    moving_time
    gear_id
    map
  from STRAVA_DATA
  where type='Ride'
)

select * from strava_data