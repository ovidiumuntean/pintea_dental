class AddAttachmentToDataFiles < ActiveRecord::Migration
  def change
    add_column :data_files, :attachment, :string
  end
end
