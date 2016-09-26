class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.float :amount
      t.integer :responseCode
      t.string :responseMessage
      t.string :xref
      t.float :amountReceived
      t.string :transactionID
      t.string :cardNumberMask
      t.string :cardTypeCode
      t.string :cardType

      t.timestamps
    end
  end
end
