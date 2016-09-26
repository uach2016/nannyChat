require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :amount => 2.5,
        :responseCode => 3,
        :responseMessage => "Response Message",
        :xref => "Xref",
        :amountReceived => 4.5,
        :transactionID => "Transaction",
        :cardNumberMask => "Card Number Mask",
        :cardTypeCode => "Card Type Code",
        :cardType => "Card Type"
      ),
      Payment.create!(
        :amount => 2.5,
        :responseCode => 3,
        :responseMessage => "Response Message",
        :xref => "Xref",
        :amountReceived => 4.5,
        :transactionID => "Transaction",
        :cardNumberMask => "Card Number Mask",
        :cardTypeCode => "Card Type Code",
        :cardType => "Card Type"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Response Message".to_s, :count => 2
    assert_select "tr>td", :text => "Xref".to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Transaction".to_s, :count => 2
    assert_select "tr>td", :text => "Card Number Mask".to_s, :count => 2
    assert_select "tr>td", :text => "Card Type Code".to_s, :count => 2
    assert_select "tr>td", :text => "Card Type".to_s, :count => 2
  end
end
