class Map < ApplicationRecord
    has_many :locations
    has_many :heros, through: :locations
    has_many :rogues, through: :locations
end
