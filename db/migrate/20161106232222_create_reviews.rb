class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :patient_id
      t.integer :appointment_treatment_id
      t.integer :stars

      t.timestamps null: false
    end
  end
end
