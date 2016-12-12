class Place < ActiveRecord::Base
  
  # User Attribution
  belongs_to :user
  has_many :comments
  has_many :photos

  # Geocoding
  geocoded_by :address
  after_validation :geocode

  # Validations
  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true
  validates :description, presence: true
end
