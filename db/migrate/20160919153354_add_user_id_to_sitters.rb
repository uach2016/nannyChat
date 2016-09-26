class AddUserIdToSitters < ActiveRecord::Migration[5.0]
  def change
    add_column :sitters, :user_id, :integer
  end
end
