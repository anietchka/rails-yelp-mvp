class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese japanese french italian belgian)

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not an accepted category" }
end
