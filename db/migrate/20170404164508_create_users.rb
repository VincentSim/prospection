class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :name
      t.string :email
      t.boolean :client
      t.date :contacted_one
      t.date :contacted_two
      t.date :contacted_three

      t.timestamps
    end
  end
end
