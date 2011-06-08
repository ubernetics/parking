require 'spec_helper'

describe "tickets/edit.html.haml" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :folio => 1,
      :licenseplate => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path(@ticket), :method => "post" do
      assert_select "input#ticket_folio", :name => "ticket[folio]"
      assert_select "input#ticket_licenseplate", :name => "ticket[licenseplate]"
      assert_select "textarea#ticket_note", :name => "ticket[note]"
    end
  end
end
