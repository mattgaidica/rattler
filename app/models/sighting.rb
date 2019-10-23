class Sighting < ApplicationRecord
  belongs_to :squirrel
  belongs_to :location, dependent: :destroy
  belongs_to :project
end
