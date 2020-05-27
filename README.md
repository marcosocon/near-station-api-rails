# README

Ruby -v ruby-2.6.5


Commands to run the app, setup the database.yml

´´´
  bundle install
  rake db:setup
  rails s
´´´
## URLS ##

## Import Data

METHOD: POST
URL: http://localhost:3001/api/v1/import_data
PARAMS: google_trasit[file]
Response: 200

## Check stations

METHOD: GET
URL: http://localhost:3001/api/v1/stations
PARAMS:
 lat: 0.37991373
 long: -0.122090545
Response: 
```
  [
    {
        "id": 259,
        "stop_id": "2094",
        "stop_code": "2094",
        "stop_name": "Pleasanton Ace",
        "stop_lat": 37.659113,
        "stop_lon": -121.882374,
        "location_type": "0",
        "parent_station": "\r\n",
        "created_at": "2020-05-26T16:33:46.909Z",
        "updated_at": "2020-05-26T16:33:46.909Z"
    },
    {
        "id": 260,
        "stop_id": "472",
        "stop_code": "472",
        "stop_name": "Airport Plaza",
        "stop_lat": 37.979308,
        "stop_lon": -122.054047,
        "location_type": "0",
        "parent_station": "\r\n",
        "created_at": "2020-05-26T16:33:46.939Z",
        "updated_at": "2020-05-26T16:33:46.939Z"
    }
  ]
```
# near-station-api-rails
