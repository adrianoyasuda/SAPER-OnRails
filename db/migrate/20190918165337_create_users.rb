class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :register_id
      t.string :description
      t.string :password
      t.boolean :type
      t.integer :points

      t.timestamps
    end
  end
end
