class AddDateOfBirthToSitters < ActiveRecord::Migration[5.0]
  def change
    add_column :sitters, :date_of_birth, :date
  end
end
