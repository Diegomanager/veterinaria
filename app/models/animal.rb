class Animal < ApplicationRecord
    belongs_to :owner
    belongs_to :species
end
