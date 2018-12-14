class CreateBusinessUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :business_units do |t|
      t.string :name
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
