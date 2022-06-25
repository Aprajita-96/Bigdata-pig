rows= load '/mnt/nyc_taxi_data_2014.csv' using PigStorage(',');
records= filter rows by $0!='vendor_id';
required_data_set= foreach records generate $3 as passenger_count, $12 as fare_amount , (float)$15/$17 as tip_rate;
nyctaxi= filter required_data_set by passenger_count>=1 AND passenger_count<10;
grouped_nyctaxi= group nyctaxi by passenger_count;
result= foreach grouped_nyctaxi generate group, AVG(nyctaxi.fare_amount), AVG(nyctaxi.tip_rate);
dump result;