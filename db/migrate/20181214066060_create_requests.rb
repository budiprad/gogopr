class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :number
      t.date :date_needed
      t.datetime :date_submitted
      t.string :reason_to_procure
      t.string :grand_total

      t.references :country, foreign_key: true
      t.references :entity, foreign_key: true
      t.references :business_unit, foreign_key: true
      t.references :cost_center, foreign_key: true
      t.timestamps
    end
  end
end
