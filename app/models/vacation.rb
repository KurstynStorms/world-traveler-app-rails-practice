class Vacation < ApplicationRecord
  belongs_to :country
  belongs_to :traveler
  validates :country, presence: true
  validates :traveler, presence: true


end
