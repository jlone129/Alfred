class Hero < ApplicationRecord
    has_one :location
    has_one :map, through: :location
    belongs_to :user
end
