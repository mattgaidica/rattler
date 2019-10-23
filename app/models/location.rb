class Location < ApplicationRecord
	belongs_to :sighting, optional: true
	belongs_to :project, optional: true
end
