class Location < ApplicationRecord
	belongs_to :sighting
	belongs_to :project
end
