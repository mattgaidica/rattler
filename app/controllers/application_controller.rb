class ApplicationController < ActionController::Base

	def import_gpx
		filename = '/Users/matt/Desktop/explore.gpx'
		gpx = GPX::GPXFile.new(:gpx_file => filename)
		waypoint = gpx.waypoints.first
		gpx.waypoints.each do |waypoint|
			sighting = Sighting.find_by(name: waypoint.name, project_id: 1)
			if sighting.nil?
				loc = Location.create(lat: waypoint.lat, lon: waypoint.lon)
				sighting = Sighting.create(name: waypoint.name, location_id: loc.id,project_id: Project.first.id, sighted_at: waypoint.time)
			end
		end
		redirect_back fallback_location: sightings_url
	end
end
