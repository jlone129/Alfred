class Rogue < ApplicationRecord
    has_one :location
    has_one :map, through: :location
end
