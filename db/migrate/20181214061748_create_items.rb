class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :product, foreign_key: true
      t.string :item_name
      t.string :vendor
      t.references :chart_of_account, foreign_key: true
      t.string :unit
      t.string :total
      t.string :vat
      t.string :est_unit_price
      t.string :est_total_price
      t.string :attachment
      t.references :request, foreign_key: true
      t.timestamps
    end
  end
end
