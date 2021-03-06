class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
