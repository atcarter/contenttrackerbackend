class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.text :description
      t.integer :rating
      t.belongs_to :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
