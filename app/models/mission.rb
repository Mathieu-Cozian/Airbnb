class Mission < ApplicationRecord
  belongs_to :apartment
  belongs_to :cleaner
end
