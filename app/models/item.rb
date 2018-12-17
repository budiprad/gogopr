class Item < ApplicationRecord
  belongs_to :product
  belongs_to :chart_of_account
  belongs_to :request

  validates :item_name, presence: true
  validates :product_id, presence: true
  validates :chart_of_account_id, presence: true
  validates :request_id, presence: true
  validates :unit, presence: true
  validates :total, presence: true
  validates :vat, presence: true
  validates :est_unit_price, presence: true
  validates :est_total_price, presence: true

end
