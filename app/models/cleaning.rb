class Cleaning < ApplicationRecord
    belongs_to :admin, optional: true
    belongs_to :employee, optional: true
    belongs_to :client, optional: true
    belongs_to :address
end
