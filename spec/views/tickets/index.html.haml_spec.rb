require 'spec_helper'

describe "tickets/index.html.haml" do
  before(:each) do
    assign(:tickets, [
      stub_model(Ticket,
        :folio => 1,
        :licenseplate => "Licenseplate",
        :note => "MyText"
      ),
      stub_model(Ticket,
        :folio => 1,
        :licenseplate => "Licenseplate",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Licenseplate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
