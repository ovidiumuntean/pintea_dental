class CreateToothTreatments < ActiveRecord::Migration
  def change
    create_table :tooth_treatments do |t|
      t.integer :tooth_id
      t.integer :treatment_id
      t.date :date_treatead

      t.timestamps null: false
    end
  end
end
