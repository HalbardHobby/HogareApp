class Client < ApplicationRecord
    belongs_to :user
    has_many :cleanings
    has_many :addresses
end
