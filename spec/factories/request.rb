FactoryBot.define do
    factory :request do
      sequence(:number) { |n| "500#{n}" }
      date_needed { "2018-12-30" }
      reason_to_procure { "pengen aja" }
      grand_total { "999999999" }
      country_id { 1 }
      entity_id { 1 }
      business_unit_id { 1 }
      cost_center_id { 1 }
    end
  end
  