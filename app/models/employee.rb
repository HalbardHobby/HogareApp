class Employee < ApplicationRecord
  belongs_to :user
  has_many :cleanings

  def name
    return self.user.name
  end
end
