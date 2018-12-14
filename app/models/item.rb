class Item < ApplicationRecord
  belongs_to :product
  belongs_to :chart_of_account
end
