FactoryBot.define do
    factory :item do
      item_name { "Mi Bangcat" }
      vendor { "PT EKA BUDI P" }
      unit { "Bungkus" }
      total { "100" }
      vat { "1" }
      est_unit_price { "10000" }
      est_total_price { "1000000" }
      attachment { "none" }
      chart_of_account_id { 1 }
      product_id { 1 }
      # request_id { 1 }
    end
  end
  