class Pet < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :category, presence: true
  validates :age, numericality: true
  validates :price, numericality: true
end
