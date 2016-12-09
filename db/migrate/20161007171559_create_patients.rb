class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :cnp
      t.string :first_name
      t.string :surname
      t.integer :gender_id
      t.date :birthday
      t.string :insurance
      t.timestamp :registration_date
      t.string :address1
      t.string :address2
      t.string :city
      t.string :county
      t.string :postal_code
      t.integer :country_id
      t.string :phone
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
