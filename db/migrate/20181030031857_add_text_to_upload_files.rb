class AddTextToUploadFiles < ActiveRecord::Migration[5.2]
  def change
    add_column :upload_files, :text, :string
  end
end
