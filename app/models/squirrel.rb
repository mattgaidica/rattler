class Squirrel < ApplicationRecord
	belongs_to :sighting, optional: true
end
