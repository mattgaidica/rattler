# README

[Garmin Explore Maps] (https://us0.inreach.garmin.com/Map)

[Add markers](https://developers-dot-devsite-v2-prod.appspot.com/maps/documentation/javascript/examples/marker-simple)

Date format: 2019-10-23 15:19:44

Start Over
---
rake db:reset
loc = Location.create(lat: 42.322142, lon: -83.707065)
proj = Project.create(name: 'ARBO', location_id: loc.id, api_key: "XXX")