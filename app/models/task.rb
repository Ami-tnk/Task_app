class Task < ApplicationRecord
  validates :name, length: { maximum: 30 }, presence: true
  validates :description, presence: true

  belongs_to :user
end
