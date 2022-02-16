class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
    message: "%{value} is not supported by our services" }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
