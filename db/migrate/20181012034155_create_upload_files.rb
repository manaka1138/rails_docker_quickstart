class CreateUploadFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :upload_files do |t|
      t.string :file

      t.timestamps
    end
  end
end
