class DeleteNameSurnameAddressFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name
    remove_column :users, :surname
    remove_column :users, :address
  end
end
