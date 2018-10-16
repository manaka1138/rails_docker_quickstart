class CreatePictureComments < ActiveRecord::Migration[5.2]
  def change
    create_table :picture_comments do |t|
      t.string :commenter
      t.text :body
      t.references :picture, foreign_key: true

      t.timestamps
    end
  end
end
