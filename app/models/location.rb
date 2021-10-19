class Location < ApplicationRecord
    belongs_to :map
    has_many :rogues
    has_many :heros
end
