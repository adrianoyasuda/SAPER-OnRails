class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :img_url
      t.string :description
      t.integer :points
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
