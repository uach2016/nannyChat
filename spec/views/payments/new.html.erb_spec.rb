require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :amount => 1.5,
      :responseCode => 1,
      :responseMessage => "MyString",
      :xref => "MyString",
      :amountReceived => 1.5,
      :transactionID => "MyString",
      :cardNumberMask => "MyString",
      :cardTypeCode => "MyString",
      :cardType => "MyString"
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_responseCode[name=?]", "payment[responseCode]"

      assert_select "input#payment_responseMessage[name=?]", "payment[responseMessage]"

      assert_select "input#payment_xref[name=?]", "payment[xref]"

      assert_select "input#payment_amountReceived[name=?]", "payment[amountReceived]"

      assert_select "input#payment_transactionID[name=?]", "payment[transactionID]"

      assert_select "input#payment_cardNumberMask[name=?]", "payment[cardNumberMask]"

      assert_select "input#payment_cardTypeCode[name=?]", "payment[cardTypeCode]"

      assert_select "input#payment_cardType[name=?]", "payment[cardType]"
    end
  end
end
