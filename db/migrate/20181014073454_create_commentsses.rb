class CreateCommentsses < ActiveRecord::Migration[5.2]
  def change
    create_table :commentsses do |t|
      t.string :commenter
      t.text :body
      t.references :pictures, foreign_key: true

      t.timestamps
    end
  end
end
