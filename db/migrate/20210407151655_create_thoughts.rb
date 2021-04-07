class CreateThoughts < ActiveRecord::Migration[6.1]
  def change
    create_table :thoughts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hobby, null: false, foreign_key: true
      t.integer :likes
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
