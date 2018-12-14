class Tracking < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :request
end
