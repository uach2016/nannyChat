class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
