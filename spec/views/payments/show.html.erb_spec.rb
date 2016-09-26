require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :amount => 2.5,
      :responseCode => 3,
      :responseMessage => "Response Message",
      :xref => "Xref",
      :amountReceived => 4.5,
      :transactionID => "Transaction",
      :cardNumberMask => "Card Number Mask",
      :cardTypeCode => "Card Type Code",
      :cardType => "Card Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Response Message/)
    expect(rendered).to match(/Xref/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Transaction/)
    expect(rendered).to match(/Card Number Mask/)
    expect(rendered).to match(/Card Type Code/)
    expect(rendered).to match(/Card Type/)
  end
end
