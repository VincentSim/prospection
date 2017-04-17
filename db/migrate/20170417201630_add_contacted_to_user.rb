class AddContactedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :contacted, :boolean, null: false, default: false
  end
end
