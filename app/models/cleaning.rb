class Cleaning < ApplicationRecord
    belongs_to :admin
    belongs_to :employee
    belongs_to :client
    belongs_to :address
end
