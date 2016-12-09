class ChangeDateFormatInAppointments < ActiveRecord::Migration
  def up
    change_column :appointments, :date, :datetime
  end

  def down
    change_column :appointments, :date, :date
  end
end
