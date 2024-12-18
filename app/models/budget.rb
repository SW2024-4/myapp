class Budget < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :income, numericality: {only_integer: true}
  validates :expend, numericality: {only_integer: true}
end
