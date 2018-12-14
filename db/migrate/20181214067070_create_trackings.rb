class CreateTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :trackings do |t|
      t.datetime :date_change
      t.references :user, foreign_key: true
      t.references :status, foreign_key: true
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
