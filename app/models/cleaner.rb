class Cleaner < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
  validates :status, presence: true
end
