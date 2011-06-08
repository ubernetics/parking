require 'spec_helper'

describe "tickets/show.html.haml" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :folio => 1,
      :licenseplate => "Licenseplate",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Licenseplate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
