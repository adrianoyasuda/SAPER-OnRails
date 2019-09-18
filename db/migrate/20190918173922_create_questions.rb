class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :img_url
      t.string :description
      t.integer :points
      t.string :courses
      t.integer :user_id

      t.timestamps
    end
  end
end
