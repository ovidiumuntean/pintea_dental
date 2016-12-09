class CreateJobHistories < ActiveRecord::Migration
  def change
    create_table :job_histories do |t|
      t.integer :employee_id
      t.date :end_date
      t.string :job_title
      t.integer :clinic_id

      t.timestamps null: false
    end
  end
end
