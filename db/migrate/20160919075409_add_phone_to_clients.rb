class AddPhoneToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :phone, :string
  end
end
