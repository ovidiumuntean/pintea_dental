class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.date :date
      t.time :time
      t.integer :tooth_treatment_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
