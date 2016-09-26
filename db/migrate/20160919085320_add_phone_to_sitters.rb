class AddPhoneToSitters < ActiveRecord::Migration[5.0]
  def change
    add_column :sitters, :phone, :string
  end
end
