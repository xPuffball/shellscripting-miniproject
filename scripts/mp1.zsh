export STATION_ID='48549'
export Y_START_DATE='2020'
export Y_END_DATE='2022'
export M_DATES='2'

cd ../data

for year in {$Y_START_DATE..$Y_END_DATE}; 
do wget  --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=${STATION_ID}&Year=${year}&Month=${M_DATES}&Day=14&timeframe=1&submit= Download+Data";
done;

cd ../scripts

echo 'HELLO!'

