class Request < ApplicationRecord
    validates :number, presence: true
    validates :reason_to_procure, presence: true
    validates :date_needed, presence: true
    validates :grand_total, presence: true
    validates :country_id, presence: true
    validates :entity_id, presence: true
    validates :business_unit_id, presence: true
    validates :cost_center_id, presence: true
end
