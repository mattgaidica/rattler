class Sighting < ApplicationRecord
  belongs_to :squirrel
  belongs_to :location
  belongs_to :project
end
