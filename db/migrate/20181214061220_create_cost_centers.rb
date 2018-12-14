class CreateCostCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :cost_centers do |t|
      t.string :name
      t.references :business_unit, foreign_key: true

      t.timestamps
    end
  end
end
