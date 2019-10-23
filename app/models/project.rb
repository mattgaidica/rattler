class Project < ApplicationRecord
  belongs_to :location, dependent: :destroy
  has_many :sightings, dependent: :destroy
end
