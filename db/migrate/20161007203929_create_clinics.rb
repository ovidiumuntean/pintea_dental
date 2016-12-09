class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :county
      t.string :postal_code
      t.integer :country_id
      t.string :phone
      t.string :email
      t.date :date_registred
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
