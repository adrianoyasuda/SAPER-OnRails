class CreateQuestionPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :question_points do |t|
      t.references :question, null: false, foreign_key: true
      t.integer :point
      t.references :user, null: false, foreign_key: true
      t.integer :extra

      t.timestamps
    end
    add_index :question_points, :extra, unique: true
  end
end
