FactoryBot.define do
    factory :request do
      sequence(:number) { |n| "500#{n}" }
      date_needed { "2018-12-30" }
      reason_to_procure { "pengen aja" }
      grand_total { "999999999" }
      country
      entity
      business_unit
      cost_center
    end
  end
  